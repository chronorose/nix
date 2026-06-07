{ config, pkgs, ... }:

{
  networking.hostName = "relapse";

  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
    grub = {
      device = "nodev";
      efiSupport = true;
      useOSProber = true;
    };
  };

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "chronorose";
        email = "rendemare@gmail.com";
      };
      core.editor = "nvim";
      init.defaultBranch = "master";
    };
  };

}
