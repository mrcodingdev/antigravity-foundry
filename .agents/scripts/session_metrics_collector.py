#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Session Metrics Collector - Antigravity Foundry
Script analítico que varre o diretório de transcripts do Antigravity
(localizado em ~/.gemini/antigravity/brain), calculando passos totais,
frequência de ferramentas invocadas, duração de sessões e estatísticas consolidadas.
"""

import os
import sys
import json
import argparse
from datetime import datetime
from collections import Counter, defaultdict

# Garante suporte a UTF-8 no stdout do terminal Windows
if sys.platform == "win32":
    try:
        sys.stdout.reconfigure(encoding='utf-8')
        sys.stderr.reconfigure(encoding='utf-8')
    except Exception:
        pass


def get_default_brain_dir() -> str:
    """Retorna o caminho padrão do diretório brain do Antigravity."""
    return os.path.join(os.path.expanduser('~'), '.gemini', 'antigravity', 'brain')

def parse_iso_datetime(dt_str: str):
    """Converte string ISO para objeto datetime tolerando formatos variados."""
    if not dt_str:
        return None
    try:
        # Remove sufixo Z ou offset para parsing flexível
        cleaned = dt_str.replace('Z', '+00:00')
        return datetime.fromisoformat(cleaned)
    except Exception:
        return None

def analyze_session(session_dir: str):
    """Analisa os transcripts de uma sessão específica."""
    transcript_file = os.path.join(session_dir, '.system_generated', 'logs', 'transcript.jsonl')
    
    if not os.path.exists(transcript_file):
        return None
        
    steps_count = 0
    max_step_index = 0
    tools_counter = Counter()
    first_time = None
    last_time = None
    user_prompts = 0
    agent_turns = 0
    
    try:
        with open(transcript_file, 'r', encoding='utf-8', errors='ignore') as f:
            for line in f:
                line = line.strip()
                if not line:
                    continue
                try:
                    data = json.loads(line)
                except Exception:
                    continue
                    
                steps_count += 1
                step_idx = data.get('step_index', 0)
                if isinstance(step_idx, int) and step_idx > max_step_index:
                    max_step_index = step_idx
                    
                created_at = parse_iso_datetime(data.get('created_at'))
                if created_at:
                    if first_time is None or created_at < first_time:
                        first_time = created_at
                    if last_time is None or created_at > last_time:
                        last_time = created_at
                        
                entry_type = data.get('type')
                if entry_type == 'USER_INPUT':
                    user_prompts += 1
                elif entry_type == 'PLANNER_RESPONSE':
                    agent_turns += 1
                    
                # Contabilização de ferramentas
                tool_calls = data.get('tool_calls', [])
                if isinstance(tool_calls, list):
                    for tc in tool_calls:
                        if isinstance(tc, dict):
                            tname = tc.get('name', 'unknown_tool')
                            tools_counter[tname] += 1
                            
    except Exception as e:
        return None
        
    session_id = os.path.basename(session_dir)
    duration_sec = 0
    if first_time and last_time:
        duration_sec = (last_time - first_time).total_seconds()
        
    return {
        "session_id": session_id,
        "total_entries": steps_count,
        "max_step_index": max_step_index,
        "total_tool_calls": sum(tools_counter.values()),
        "tools_breakdown": dict(tools_counter),
        "user_prompts": user_prompts,
        "agent_turns": agent_turns,
        "duration_seconds": max(0, duration_sec),
        "first_activity": first_time.isoformat() if first_time else None,
        "last_activity": last_time.isoformat() if last_time else None
    }

def collect_metrics(brain_dir: str, limit: int = None):
    """Varre todas as sessões dentro do brain_dir e consolida as métricas."""
    if not os.path.exists(brain_dir):
        raise FileNotFoundError(f"Diretório brain não encontrado: {brain_dir}")
        
    session_dirs = []
    for item in os.listdir(brain_dir):
        full_path = os.path.join(brain_dir, item)
        if os.path.isdir(full_path):
            session_dirs.append(full_path)
            
    # Ordena por data de modificação decrescente (mais recentes primeiro)
    session_dirs.sort(key=lambda p: os.path.getmtime(p), reverse=True)
    
    if limit and limit > 0:
        session_dirs = session_dirs[:limit]
        
    global_tools = Counter()
    total_steps = 0
    total_tool_calls = 0
    total_user_prompts = 0
    valid_sessions = []
    
    for sdir in session_dirs:
        res = analyze_session(sdir)
        if res:
            valid_sessions.append(res)
            total_steps += res['max_step_index'] or res['total_entries']
            total_tool_calls += res['total_tool_calls']
            total_user_prompts += res['user_prompts']
            for tname, count in res['tools_breakdown'].items():
                global_tools[tname] += count
                
    summary = {
        "scan_timestamp": datetime.now().isoformat(),
        "brain_directory": brain_dir,
        "total_sessions_found": len(session_dirs),
        "active_sessions_analyzed": len(valid_sessions),
        "aggregate_metrics": {
            "total_steps": total_steps,
            "total_tool_calls": total_tool_calls,
            "total_user_prompts": total_user_prompts,
            "avg_steps_per_session": round(total_steps / len(valid_sessions), 2) if valid_sessions else 0,
            "avg_tools_per_session": round(total_tool_calls / len(valid_sessions), 2) if valid_sessions else 0
        },
        "top_tools": dict(global_tools.most_common(20)),
        "sessions": valid_sessions
    }
    
    return summary

def print_text_report(metrics: dict):
    """Exibe o relatório formatado no terminal com alinhamento tabular."""
    agg = metrics['aggregate_metrics']
    print("\n" + "=" * 75)
    print("📊 RELATÓRIO DE MÉTRICAS DE SESSÃO - ANTIGRAVITY FOUNDRY")
    print("=" * 75)
    print(f" Diretório Analisado : {metrics['brain_directory']}")
    print(f" Sessões Analisadas  : {metrics['active_sessions_analyzed']} de {metrics['total_sessions_found']}")
    print(f" Total de Passos     : {agg['total_steps']:,}")
    print(f" Invocação de Ferram.: {agg['total_tool_calls']:,}")
    print(f" Prompts do Usuário  : {agg['total_user_prompts']:,}")
    print(f" Média Passos/Sessão : {agg['avg_steps_per_session']}")
    print(f" Média Tools/Sessão  : {agg['avg_tools_per_session']}")
    print("-" * 75)
    print("🛠️ TOP 15 FERRAMENTAS MAIS UTILIZADAS:")
    print(f" {'FERRAMENTA':<35} | {'CHAMADAS':>10} | {'PARTICIPAÇÃO':>12}")
    print(" " + "-" * 65)
    total_calls = agg['total_tool_calls'] or 1
    for tool_name, count in list(metrics['top_tools'].items())[:15]:
        share = (count / total_calls) * 100
        print(f" {tool_name:<35} | {count:>10,} | {share:>11.1f}%")
    print("=" * 75 + "\n")

def main():
    parser = argparse.ArgumentParser(description="Coletor de Métricas de Sessões do Antigravity")
    parser.add_argument("--brain-dir", default=get_default_brain_dir(), help="Caminho do diretório brain")
    parser.add_argument("--limit", type=int, default=50, help="Limite de sessões mais recentes a analisar (0 para todas)")
    parser.add_argument("--json", action="store_true", help="Exporta resultado bruto em JSON")
    
    args = parser.parse_args()
    
    metrics = collect_metrics(args.brain_dir, limit=args.limit if args.limit > 0 else None)
    
    if args.json:
        print(json.dumps(metrics, indent=2, ensure_ascii=False))
    else:
        print_text_report(metrics)

if __name__ == '__main__':
    main()
