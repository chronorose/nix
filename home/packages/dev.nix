{ pkgs, ...}:

with pkgs; [
  man-pages
  man-pages-posix

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

  file
  unzip
  wget

  tokei

  nil
  nixfmt-classic
]
