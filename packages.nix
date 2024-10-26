{
  config,
  pkgs,
  ...
}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # List packages installed in system profile. To search, run:
  # $ nix search wget

  home.packages = with pkgs; [
    gh
    nsnake
    bsdgames
    moon-buggy
    jetbrains.idea-community-bin
    sioyek
    mupdf
    tinymist
    typst-lsp
    helix
    python311Packages.dbus-python
    python312Packages.dbus-python
    python311Packages.pip
    typst
    python311Packages.pydbus
    python312Packages.pydbus
    ardour
    pywal
    neo-cowsay
    hyprlandPlugins.hyprexpo
    gdm
    endless-sky
    endless-sky
    arduino
    libnotify
    #julia-bin
    ninja
    meson
    glm
    networkmanagerapplet
    #openvpn3
    wireguard-tools
    wireguard-tools
    wireguard-tools
    fcitx5-rime
    hyprpicker
    swayidle
    blueman
    killall
    catppuccin-sddm
    #python311Packages.pip
    #python312Packages.pyquery
    wlogout
    eww
    hyprlock
    #hyprland
    pulseaudio
    grim
    slurp
    clifm
    pavucontrol
    dunst
    brightnessctl
    wofi
    bemenu
    rofi
    hyprpaper
    waybar
    warp-terminal
    ripgrep
    luajitPackages.luarocks
    godot_4
    virtualenv
    #rust-analyzer
    sqlitebrowser
    sqlite
    ffmpeg
    zed-editor
    trunk
    #surrealdb
    postgresql_16
    yt-dlp
    sassc
    numix-icon-theme-circle
    #aseprite
    rustup
    menulibre
    tokyonight-gtk-theme
    friture
    jdk21
    tangram
    alejandra
    gnomeExtensions.forge
    gnomeExtensions.blur-my-shell
    neovim
    zathura
    libpng
    github-desktop
    kitty
    ddgr
    cbonsai
    sl
    thunderbird
    blender
    blackbox-terminal
    obsidian
    discord
    element-desktop
    vscodium
    pridefetch
    zsh
    python3
    starship
    git
    libreoffice-fresh
    inkscape
    tdesktop
    calcurse
    signal-desktop
    transmission_4-gtk
    gimp
    keepassxc
    distrobox
    pomodoro
    minetest
    home-manager
    appimage-run
    ibus-engines.typing-booster
    ibus-engines.table
    anki
    prismlauncher
    gnome-sound-recorder
    ungoogled-chromium
    texliveFull
    #hplip
    hplipWithPlugin
    neofetch
    kdenlive
    imagemagick
    musescore
    blanket
    ghc
    stack
    logisim-evolution
    gcc
    geogebra6
    htop
    powertop
  ];

  #programs.steam = {
  #		enable = true;
  #  		remotePlay.openFirewall = true;
  #		dedicatedServer.openFirewall = true;
  #	};

  #programs.neovim = {
  #  enable = true;
  #  defaultEditor = true;
  #};

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];
}
