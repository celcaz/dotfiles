# 🛠 Dotfiles Setup --- macOS + WSL + Linux

This guide configures symlinks for Neovim and WezTerm across: - macOS -
Windows (WSL) - Linux

Repository assumed at:

    ~/dotfiles

Expected structure:

    dotfiles/
     ├── nvim/
     │    └── .config/nvim/
     └── terminal/
          └── .wezterm.lua

---

# 🍎 macOS Setup

## WezTerm

```bash
rm -f ~/.wezterm.lua
ln -s ~/dotfiles/terminal/.wezterm.lua ~/.wezterm.lua
```

Verify:

```bash
ls -l ~/.wezterm.lua
```

---

## Neovim

```bash
mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim
```

Verify:

```bash
ls -la ~/.config/nvim/init.lua
```

Test:

```bash
nvim
```

Inside Neovim:

```vim
:echo $MYVIMRC
:Lazy
:Mason
:LspInfo
```

---

# 🐧 Linux Setup

## WezTerm

```bash
rm -f ~/.wezterm.lua
ln -s ~/dotfiles/terminal/.wezterm.lua ~/.wezterm.lua
```

## Neovim

```bash
mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim
```

Test with:

```bash
nvim
```

---

# 🪟 Windows (WSL) Setup

> Assumes WSL distro name: archlinux

## Inside WSL (Linux side)

Clone repo:

```bash
cd ~
git clone <repo-url> dotfiles
```

Create Neovim symlink:

```bash
mkdir -p ~/.config
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim/.config/nvim ~/.config/nvim
```

---

## Windows Side (PowerShell)

WezTerm on Windows reads config from:

    C:\Users\<username>\.wezterm.lua

Create symlink pointing to WSL file:

```powershell
mklink C:\Users\<username>\.wezterm.lua \\wsl$\archlinux\home\<username>\dotfiles\terminal\.wezterm.lua
```

---

# 🧪 LSP Test (All Platforms)

Open a file like:

```bash
nvim test.lua
```

Inside Neovim:

```vim
:lua vim.lsp.buf.hover()
:LspInfo
```

If documentation appears and a client is attached, LSP is working.

---

# 🛠 Troubleshooting

## WezTerm Error

    Cannot convert `Null` to `Config`

Check file is not empty:

```bash
wc -l ~/.wezterm.lua
```

## Neovim Missing init.lua

```bash
ls -l ~/.config/nvim
```

Ensure `init.lua` exists.

---

# ✅ Expected Result

- WezTerm loads theme and settings
- Neovim loads plugins (Lazy)
- Mason opens
- LSP attaches correctly
- `:echo $MYVIMRC` points to correct path

---

WIP Starship setup
