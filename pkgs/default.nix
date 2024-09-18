{
  config,
  pkgs,
  pkgs-unstable,
  ...
}: {
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    glm
    networkmanagerapplet
    openvpn3
    wireguard-tools
    wireguard-tools
    wireguard-tools
    fcitx5-rime
    hyprpicker
    swayidle
    blueman
    killall
    catppuccin-sddm
    python311Packages.pip
    python312Packages.pyquery
    pkgs-unstable.wlogout
    pkgs-unstable.eww
    pkgs-unstable.hyprlock
    pulseaudio
    grim
    slurp
    pkgs-unstable.clifm
    pavucontrol
    dunst
    brightnessctl
    wofi
    bemenu
    rofi
    hyprpaper
    waybar
    pkgs-unstable.warp-terminal
    ripgrep
    luajitPackages.luarocks
    godot_4
    virtualenv
    pkgs-unstable.rust-analyzer
    sqlitebrowser
    sqlite
    ffmpeg
    pkgs-unstable.zed-editor
    trunk
    surrealdb
    postgresql_16
    yt-dlp
    sassc
    numix-icon-theme-circle
    aseprite
    rustup
    menulibre
    tokyonight-gtk-theme
    friture
    jdk21
    tangram
    alejandra
    gnomeExtensions.forge
    gnomeExtensions.blur-my-shell
    pkgs-unstable.neovim
    zathura
    libpng
    github-desktop
    pkgs-unstable.kitty
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
    gnome.gnome-tweaks
    gnome-extension-manager
    python3
    starship
    git
    libreoffice-fresh
    inkscape
    tdesktop
    calcurse
    signal-desktop
    transmission-gtk
    gimp
    keepassxc
    distrobox
    gnome.pomodoro
    minetest
    home-manager
    appimage-run
    ibus-engines.typing-booster
    ibus-engines.table
    anki
    prismlauncher
    gnome.gnome-sound-recorder
    ungoogled-chromium
    texliveFull
    hplip
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

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
    "openssl-1.1.1w"
  ];

  imports = [
    ./input.nix
    ./fonts.nix
  ];
}
