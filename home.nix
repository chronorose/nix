{ config, pkgs, ... }:

{
  home.username = "chronorose";
  home.homeDirectory = "/home/chronorose";

  imports = [
    ./home
  ];
  home.stateVersion = "26.05";
}
