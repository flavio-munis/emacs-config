# Main Info
Contains my personal configuration of Emacs. If you want to use it, please make sure to run on a Linux Environment.

# Font and Themes

## Font
Use a nerd font to make sure all icons are correctly rendered, the default is [UbuntuMono Nerd Font](https://www.nerdfonts.com/font-downloads).

## Theme
By default it uses a dynamic theme with [pywal16](https://github.com/eylles/pywal16) defined colors. There's a [catppuccin theme](https://catppuccin.com/) package commented out on `config.org`, feel free to uncomment this piece and comment/delete the `ewal` and `ewal-spacemacs-themes` packages for a static theme.


# Packages
Packages required to use the full extension of the configs.

## Essential
- [CMake](https://cmake.org/)
- [node](https://nodejs.org/en)
- [npm](https://www.npmjs.com/)
- [pywal16](https://github.com/eylles/pywal16)

## Languages
### C/C++
- [clangd](https://clangd.llvm.org/)

### Haskell
- [haskell](https://www.haskell.org/)
- [haskell-language-server](https://github.com/haskell/haskell-language-server)

### OCaml (TODO)

### Python (TODO)

### Shell Scripts
- [shellcheck](https://www.shellcheck.net/)
- [bash-language-server](https://github.com/bash-lsp/bash-language-server)

### Standard ML (Optional)
- [SML/NJ](https://www.smlnj.org/index.html)

# Use
Backup previous emacs configurantions and execute `deploy.sh`. The script will use the legacy `~/.emacs.d` directory. Will test in the future to move the configs files to the modern `~/.config/emacs`.

# Credits
Configs are based on [this](https://www.youtube.com/playlist?list=PL5--8gKSku15e8lXf7aLICFmAHQVo0KXX) amazing series made by [Derek Taylor](https://gitlab.com/dwt1), and also from [this repo](https://github.com/Bugswriter/BugsWritersEmacs/tree/master).
