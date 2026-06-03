{ pkgs, inputs, ...}:
let 
  llm-pkgs = inputs.llm-agents.packages.${pkgs.stdenv.hostPlatform.system};
in
{
    home.packages = with pkgs; [
    	gnome-tweaks
    	gnomeExtensions.hide-top-bar
      wl-clipboard

    	ripgrep

      clang	

      telegram-desktop

      # latex
      pandoc
      texliveBasic

      llm-pkgs.opencode

      # usual suspects
      python3
      nodejs
    ];

}
