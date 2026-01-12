# LazyVim Config

Personal [LazyVim](https://github.com/LazyVim/LazyVim) configuration.

## Machine Setup

### 1. Install dependencies

```bash
# Neovim
brew install neovim

# Required for file finding and search
brew install fzf fd ripgrep

# Node.js (for LSP servers)
brew install node
```

### 2. Clone this config

```bash
git clone git@github.com:amiller68/neovim-config.git ~/.config/nvim
```

### 3. Launch Neovim

```bash
nvim
```

Lazy.nvim will automatically install all plugins on first launch.

### 4. Install LSP servers

Inside Neovim, run:

```
:Mason
```

Install the language servers you need (vtsls, pyright, rust-analyzer, etc).

## Optional Tools

### wt - Git Worktree Manager

For running parallel Claude Code sessions in isolated worktrees:

```bash
curl -sSf https://raw.githubusercontent.com/amiller68/worktree/main/install.sh | bash
```

Commands: `wt new`, `wt list`, `wt open`, `wt rm`

See: https://github.com/amiller68/wt
