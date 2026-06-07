{ config, pkgs, ... }:

{
  networking.hostName = "redo";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.git = {
    enable = true;
    config = {
      user = {
        userName = "Vova Zhakulin";
        userEmail = "zhakulin.vladimir@h-partners.com";
      };
      core.editor = "nvim";
      init.defaultBranch = "master";
    };
  };

}
