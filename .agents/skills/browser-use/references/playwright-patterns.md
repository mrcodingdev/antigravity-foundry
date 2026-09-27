# Padrões de Automação e Asserções Resilientes (Browser Use)

## 1. Localizadores Semânticos e Resilientes
Evite seletores frágeis baseados em estrutura profunda de divs (`div > div:nth-child(3)`). Prefira seletores semânticos:
- `page.getByRole('button', { name: 'Finalizar Venda' })`
- `page.getByLabel('Código de Barras ou Nome')`
- `page.getByTestId('pdv-total-display')`

---

## 2. Esperas Determinísticas (Zero Sleep Aleatório)
Nunca utilize comandos de pausa cega (`time.sleep` ou `sleep 3000`). Utilize esperas baseadas em eventos do DOM:
- `page.waitForSelector('.table tbody tr', { state: 'visible' })`
- `page.waitForLoadState('networkidle')`
- `page.waitForResponse(resp => resp.url().includes('vendas/functions.php') && resp.status() === 200)`

---

## 3. Checklist de Homologação Visual
1. **Console Logs:** Nenhum `Uncaught TypeError` ou falha de script permitida.
2. **Network Failures:** Nenhuma requisição com status `404`, `500` ou `CORS error`.
3. **Contrast & Elements:** Todos os botões devem ter contraste de cor sólida compatível com WCAG AA.
