{ pkgs, ...}:

with pkgs; [
  ripgrep
  clang

  # usual suspects
  python3
  nodejs

  gdb
  rr
]
