{ config, pkgs, ...}:

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
    settings.user = {
      name = "chronorose";
      email = "rendemare@gmail.com";
    };
  };
}
