# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Install

### Windows(PowerShell)

- Make a backup of your current Neovim files:

```bash
# required
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak

# optional but recommended
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

- Clone the starter

```bash
git clone https://github.com/ACupofAir/lazyvim-air.git $env:LOCALAPPDATA\nvim
```

- Start Neovim!

```bash
nvim
```

## Dependency

- lazygit
- fzf
- Pastify.nvim:

```bash
pip3 install neovim
pip3 install pillow
```

## Config

### colorschema: light or dark

- `lua/config/options.lua`: `vim.go.background = "light"`

### self keyboard mapping

<!--TODO:-->
