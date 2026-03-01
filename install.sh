#!/usr/bin/env bash

set -e

echo "🚀 Starting Dotfiles Installation..."

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$DOTFILES_DIR/.config"

OS="$(uname -s)"

echo "Detected OS: $OS"

# -----------------------------
# Create .config if missing
# -----------------------------
mkdir -p "$HOME/.config"

# -----------------------------
# Neovim Symlink
# -----------------------------
if [ -d "$CONFIG_DIR/nvim" ]; then
  echo "🔗 Linking Neovim config..."
  rm -rf "$HOME/.config/nvim"
  ln -s "$CONFIG_DIR/nvim" "$HOME/.config/nvim"
  echo "✅ Neovim linked."
else
  echo "⚠️  Neovim config not found in $CONFIG_DIR/nvim"
fi

# -----------------------------
# WezTerm Symlink
# -----------------------------
if [ -f "$CONFIG_DIR/wezterm/.wezterm.lua" ]; then
  echo "🔗 Linking WezTerm config..."
  rm -f "$HOME/.wezterm.lua"
  ln -s "$CONFIG_DIR/wezterm/.wezterm.lua" "$HOME/.wezterm.lua"
  echo "✅ WezTerm linked."
elif [ -f "$DOTFILES_DIR/.wezterm.lua" ]; then
  echo "🔗 Linking WezTerm config from root..."
  rm -f "$HOME/.wezterm.lua"
  ln -s "$DOTFILES_DIR/.wezterm.lua" "$HOME/.wezterm.lua"
  echo "✅ WezTerm linked."
else
  echo "⚠️  WezTerm config not found."
fi

# -----------------------------
# macOS Dependencies
# -----------------------------
if [ "$OS" = "Darwin" ]; then
  echo "🍎 macOS detected."

  if command -v brew >/dev/null 2>&1; then
    echo "📦 Installing common dependencies..."
    brew install neovim ripgrep fd node || true
  else
    echo "⚠️  Homebrew not installed. Skipping package installation."
  fi
fi

# -----------------------------
# Linux Dependencies
# -----------------------------
if [ "$OS" = "Linux" ]; then
  echo "🐧 Linux detected."

  if command -v pacman >/dev/null 2>&1; then
    sudo pacman -S --noconfirm neovim ripgrep fd nodejs npm || true
  elif command -v apt >/dev/null 2>&1; then
    sudo apt update
    sudo apt install -y neovim ripgrep fd-find nodejs npm || true
  fi
fi

echo ""
echo "🎉 Installation Complete!"
echo "Open Neovim and run :Lazy to install plugins."
