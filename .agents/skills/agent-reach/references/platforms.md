# Roteamento de Plataformas no Agent Reach

## Estratégias de Consulta por Plataforma

| Plataforma | Finalidade Técnica | Estratégia de Coleta |
| :--- | :--- | :--- |
| **GitHub** | Bugs, PRs, issues e commits | Endpoints públicos de busca e repositórios de changelogs. |
| **Reddit** | Discussões de arquitetura e casos de borda | Formato `.json` nativo de threads públicas e scrapers leves de texto. |
| **YouTube** | Transcrições de palestras e tutoriais | Extração de closed captions (CC) convertidos em Markdown com timestamps. |
| **Twitter / X** | Avisos de segurança e tendências | Nitter instances e feeds de busca pública. |
| **LinkedIn** | Anúncios corporativos e artigos técnicos | Extração de posts abertos de autores técnicos de referência. |
| **RSS / Atom** | Atualizações de blogs de engenharia | Parsers XML nativos para absorção de notas de release. |
