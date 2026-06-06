{ config, pkgs, ...}:

{
  networking.hostName = "redo";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  programs.git = {
    settings.user = {
      name = "Vova Zhakulin";
      email = "zhakulin.vladimir@h-partners.com";
    };
  };

}
