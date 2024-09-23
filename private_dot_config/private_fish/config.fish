function fish_greeting
    if test $(tput cols) -ge 150
        fastfetch
    else
        echo "Hi, Mingyuan!"
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    # oh-my-posh init fish --config ~/.config/fish/themes/catppuccin_macchiato.omp.json | source
    starship init fish | source
    alias ls="eza --icons=auto"
end

# pnpm
set -gx PNPM_HOME "/home/mingyuan/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -gx PATH "/home/mingyuan/.local/share/gem/ruby/3.2.0/bin" $PATH
