#!/usr/bin/env bash

mkdir -p "$HOME/.config/zsh"

ln -sf "$HOME/dotfiles/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$HOME/dotfiles/zsh/zshrc" "$HOME/.config/zsh/.zshrc"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"
rm -rf "$HOME/.config/zsh/external"
ln -sf "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"

rm "$HOME/.gitconfig"
ln -sf "$HOME/dotfiles/git/gitconfig" "$HOME/.gitconfig"

if type alacritty &> /dev/null; then
  rm -rf "$HOME/.config/alacritty"
  ln -sf "$HOME/dotfiles/alacritty" "$HOME/.config"
fi

if type Hyprland &> /dev/null; then
  rm -rf "$HOME/.config/hypr"
  ln -sf "$HOME/dotfiles/hypr" "$HOME/.config"
fi

if type wofi &> /dev/null; then
  rm -rf "$HOME/.config/wofi"
  ln -sf "$HOME/dotfiles/wofi" "$HOME/.config"
fi

if type waybar &> /dev/null; then
  rm -rf "$HOME/.config/waybar"
  ln -sf "$HOME/dotfiles/waybar" "$HOME/.config"
fi

if type picom &> /dev/null; then
  rm -rf "$HOME/.config/picom"
  mkdir "$HOME/.config/picom"
  ln -sf "$HOME/dotfiles/picom/picom.conf" "$HOME/.config/picom/picom.conf"
fi

if type nvim &> /dev/null; then
  rm -rf "$HOME/.config/nvim"
  ln -s "$HOME/dotfiles/nvim" "$HOME/.config"
fi

if type tmux &> /dev/null; then
  rm -rf "$HOME/.config/tmux"
  mkdir -p "$HOME/.config/tmux"
  ln -sf "$HOME/dotfiles/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
fi

if type ruby &> /dev/null; then
  rm -rf "$HOME/.config/irb"
  mkdir -p "$HOME/.config/irb"
  ln -sf "$HOME/dotfiles/ruby/irbrc" "$HOME/.config/irb/irbrc"
fi

if type systemctl &> /dev/null; then
  mkdir -p "$HOME/.config/systemd/user"
  ln -sf "$HOME/dotfiles/systemd" "$HOME/.config/systemd/user"
fi

