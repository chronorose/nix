{ pkgs, ...}:

with pkgs; [
  # modern bullshit triage
  eza
  bat
  fd
  btop
  dust
  tealdeer

  ripgrep

  clang

  # usual suspects
  python3
  nodejs

  gdb
  rr
]
