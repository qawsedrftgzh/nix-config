{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    inter
    nerdfonts
  ];
  fonts.fontconfig.enable = true;
}
