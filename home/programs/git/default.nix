{
  programs.git = {
    enable = true;
    settings.user = {
      name = "Vova Zhakulin";
      email = "zhakulin.vladimir@h-partners.com";
    };
    settings.core.editor = "nvim";
    settings.init.defaultBranch = "master";
  };
}
