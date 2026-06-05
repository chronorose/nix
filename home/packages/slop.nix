{ pkgs, inputs, ...}:
let 
  llm-pkgs = inputs.llm-agents.packages.${pkgs.stdenv.hostPlatform.system};
in [
  llm-pkgs.opencode
]
