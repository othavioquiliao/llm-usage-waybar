# Setup — Symlink (Clone + Link)

## ✅ Humano (passo a passo)

### 1) Clonar repositório
```bash
cd ~/Work

git clone https://github.com/othavioquiliao/llm-usage-waybar.git
cd llm-usage-waybar
```

### 2) Criar symlinks
```bash
mkdir -p ~/.config/waybar/scripts
ln -sf "$PWD/scripts/waybar-llm-usage.sh" ~/.config/waybar/scripts/waybar-llm-usage.sh
ln -sf "$PWD/scripts/codex-quota.py" ~/.config/waybar/scripts/codex-quota.py
ln -sf "$PWD/scripts/antigravity-waybar-usage-login" ~/.config/waybar/scripts/antigravity-waybar-usage-login
ln -sf "$PWD/scripts/antigravity-waybar-usage-fetch" ~/.config/waybar/scripts/antigravity-waybar-usage-fetch
ln -sf "$PWD/scripts/llm-usage-menu" ~/.config/waybar/scripts/llm-usage-menu
ln -sf "$PWD/scripts/llm-usage-logout" ~/.config/waybar/scripts/llm-usage-logout
ln -sf "$PWD/scripts/llm-usage-details" ~/.config/waybar/scripts/llm-usage-details
ln -sf "$PWD/scripts/llm-usage-open-terminal" ~/.config/waybar/scripts/llm-usage-open-terminal
ln -sfn "$PWD/scripts/logout" ~/.config/waybar/scripts/logout
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

### 1) Clonar repositório
```bash
cd ~/Work

git clone https://github.com/othavioquiliao/llm-usage-waybar.git
cd llm-usage-waybar
```

### 2) Symlink (seguro)
```bash
mkdir -p ~/.config/waybar/scripts
ln -sf "$PWD/scripts/waybar-llm-usage.sh" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/codex-quota.py" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/antigravity-waybar-usage-login" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/antigravity-waybar-usage-fetch" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/llm-usage-menu" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/llm-usage-logout" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/llm-usage-details" ~/.config/waybar/scripts/
ln -sf "$PWD/scripts/llm-usage-open-terminal" ~/.config/waybar/scripts/
ln -sfn "$PWD/scripts/logout" ~/.config/waybar/scripts/logout
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
