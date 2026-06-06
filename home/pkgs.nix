{ pkgs, inputs, ...}@input:
let 
  packageFiles = [
    ./packages/dev.nix
    ./packages/gnome.nix
    ./packages/social.nix
    ./packages/slop.nix
    ./packages/user.nix
  ];

  packageLists = map (file: import file input) packageFiles;

  packages = builtins.concatLists packageLists;
in
{
  home.packages = packages;
}
