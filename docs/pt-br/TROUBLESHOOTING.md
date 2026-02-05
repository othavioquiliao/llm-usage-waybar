# Solução de Problemas

## Claude login não atualiza a Waybar
- O login monitora `~/.claude/.credentials.json`
- Se não atualizar:
```bash
pkill -USR2 waybar
```

## Codex ainda aparece após logout
- Cache em `/tmp/codex-quota.json`
- Remova e recarregue:
```bash
rm -f /tmp/codex-quota.json
pkill -USR2 waybar
```

## Antigravity não aparece
- IDE fechado: use o fallback cloud
```bash
~/.config/waybar/scripts/antigravity-waybar-usage-login
```

## Tooltip desalinhado
- Fonte pode estar proporcional
- Se quiser, force monoespaçada no seu CSS
