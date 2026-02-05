# Setup — Manual (Copiar Scripts)

## ✅ Humano (passo a passo)

### 1) Verificar pré‑requisitos
Veja `docs/pt-br/PREREQS.md`.

### 2) Copiar scripts
```bash
mkdir -p ~/.config/waybar/scripts
cp scripts/waybar-llm-usage.sh ~/.config/waybar/scripts/waybar-llm-usage.sh
cp scripts/codex-quota.py ~/.config/waybar/scripts/codex-quota.py
cp scripts/antigravity-waybar-usage-login ~/.config/waybar/scripts/antigravity-waybar-usage-login
cp scripts/antigravity-waybar-usage-fetch ~/.config/waybar/scripts/antigravity-waybar-usage-fetch
cp scripts/llm-usage-menu ~/.config/waybar/scripts/llm-usage-menu
cp scripts/llm-usage-logout ~/.config/waybar/scripts/llm-usage-logout
cp scripts/llm-usage-details ~/.config/waybar/scripts/llm-usage-details
cp scripts/llm-usage-open-terminal ~/.config/waybar/scripts/llm-usage-open-terminal
cp -r scripts/logout ~/.config/waybar/scripts/
chmod +x ~/.config/waybar/scripts/*
chmod +x ~/.config/waybar/scripts/logout/*.sh
```

### 3) Atualizar configuração do Waybar
Adicionar `snippets/waybar-config.jsonc` em `~/.config/waybar/config.jsonc`.

### 4) Atualizar CSS do Waybar
Adicionar `snippets/waybar-style.css` em `~/.config/waybar/style.css`.

### 5) Recarregar Waybar
```bash
pkill -USR2 waybar
```

---

## 🤖 Agente (passo a passo)

### 1) Verificar pré‑requisitos
Veja `docs/pt-br/PREREQS.md`.

### 2) Copiar scripts (com backup)
```bash
mkdir -p ~/.config/waybar/scripts
cp -a scripts/waybar-llm-usage.sh ~/.config/waybar/scripts/
cp -a scripts/codex-quota.py ~/.config/waybar/scripts/
cp -a scripts/antigravity-waybar-usage-login ~/.config/waybar/scripts/
cp -a scripts/antigravity-waybar-usage-fetch ~/.config/waybar/scripts/
cp -a scripts/llm-usage-menu ~/.config/waybar/scripts/
cp -a scripts/llm-usage-logout ~/.config/waybar/scripts/
cp -a scripts/llm-usage-details ~/.config/waybar/scripts/
cp -a scripts/llm-usage-open-terminal ~/.config/waybar/scripts/
cp -a scripts/logout ~/.config/waybar/scripts/
chmod +x ~/.config/waybar/scripts/*
chmod +x ~/.config/waybar/scripts/logout/*.sh
```

### 3) Injetar config + CSS
- Adicionar `snippets/waybar-config.jsonc`
- Adicionar `snippets/waybar-style.css`

### 4) Recarregar Waybar
```bash
pkill -USR2 waybar
```

### 5) Validar
```bash
~/.config/waybar/scripts/waybar-llm-usage.sh
```
