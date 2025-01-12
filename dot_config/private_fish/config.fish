set -gx EDITOR nvim
set -gx PATH ~/bin ~/.juliaup/bin /usr/local/bin /usr/local/opt/coreutils/libexec/gnubin /usr/local/opt/llvm/bin $PATH ~/miniconda3/bin

fzf --fish | source
set -gx STARSHIP_LOG error
starship init fish | source
