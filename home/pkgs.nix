{ pkgs, ...}:
{
    home.packages = with pkgs; [
    	gnome-tweaks
    	gnomeExtensions.hide-top-bar
      wl-clipboard
    	kitty
    	ripgrep
      clang	
      telegram-desktop
      grim
      pandoc
      texliveBasic
    ];

}
