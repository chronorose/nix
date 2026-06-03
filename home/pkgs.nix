{ pkgs, inputs, ...}:
let 
  llm-pkgs = inputs.llm-agents.packages.${pkgs.stdenv.hostPlatform.system};
in
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
      llm-pkgs.opencode
    ];

}
