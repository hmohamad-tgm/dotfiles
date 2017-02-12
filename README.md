# My Setup

- **OS:** Arch Linux x86_64
- **Window Manager:** bspwm
- **Bar:** [polybar](https://github.com/jaagr/polybar)
- **Terminal:** [termite](https://github.com/thestinger/termite)
- **Shell:** Zsh
    - bits and pieces of [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- Theme and fonts
    - **GTK Theme:** Arc Darker
    - **icon theme:** Ultra Flat
    - **fonts:** Roboto & [Roboto Mono for Powerline](https://github.com/powerline/fonts/tree/master/RobotoMono)
- **Editor:** Neovim
- **Firefox**
    - [Arc Darker Theme](https://github.com/horst3180/arc-firefox-theme)
    - Add-ons
        - uMatrix
        - Tab Groups
        - SSleuth

## Index
```
├── .config
│   ├── bspwm/bspwmrc        # bspwm config (window manager config)
│   ├── sxhkd/sxhkdrc        # sxhkd config (keyboard bindings)
│   ├── polybar/             # bar config and scripts
│   ├── termite/config       # terminal emulator config
│   ├── Thunar/uca.xml       # thunar custom actions
│   ├── rofi/config          # application launcher settings
│   ├── htop/htoprc          # htop settings
│   ├── compton.conf         # compositor config (for them nice shadows)
│   └── chromium-flags.conf  # chromium flags (use ram as cache etc.)
├── .local
│   └── share
│       ├── fonts/           # drop fonts here
│       └── icons/           # drop icon themes here 
├── scripts
│   └── blurlock             # lockscreen script
├── .themes/                 # drop GTK themes here
├── .oh-my-zsh               # zsh config and plugins
├── .vim
│   └── autoload/plug.vim    # plugin manager itself
├── .tmux.conf
├── .vimrc
├── .xinitrc
└── .zshrc
```
