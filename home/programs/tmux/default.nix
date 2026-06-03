{ pkgs, ...}:
{
    programs.tmux = {
      enable = true;
      escapeTime = 0;
      extraConfig = ''
        set-option -g default-shell ${pkgs.fish}/bin/fish
        set -g default-terminal "screen"
        set -g base-index 1
        set -g pane-base-index 1
        set -g status-keys emacs
        set -g mode-keys emacs

        set -g set-clipboard on

        unbind C-b
        set -g prefix M-q
        bind -N "..." \
          M-q send-prefix
        
        set -g mouse off
        set -g focus-events off
        setw -g aggressive-resize off
        setw -g clock-mode-style 12
        set -g history-limit 2000

        set -g default-terminal "screen-256color"
        bind -n M-h select-pane -L
        bind -n M-l select-pane -R
        bind -n M-k select-pane -U
        bind -n M-j select-pane -D

        bind -r l resize-pane -R 5
        bind -r h resize-pane -L 5
        bind c new-window -c "#{pane_current_path}"
        bind t split-window -h -c "#{pane_current_path}"
      '';
    };

}
