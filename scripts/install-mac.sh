#!/bin/bash
#
# Installation scripts/documentation for setting up macOS environments

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'export PATH="/opt/homebrew/bin:$PATH" >> .zshrc'

# Install with brew
brew install neovim
brew install tmux
