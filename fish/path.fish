function prepend_path
  if test -d $argv
    set -x PATH $argv $PATH 
  end
end


function append_path
  if test -d $argv
    set -x PATH $PATH $argv 
  end
end

 prepend_path "/bin"
 prepend_path "/sbin"
 prepend_path "/usr/bin"
 prepend_path "/usr/local/bin"
 prepend_path "/usr/local/sbin"
 
 append_path "$HOME/bin"           # Custom scripts
 # append_path "$HOME/.secbin"       # Secret custom scripts
 
 append_path "/snap/bin"
 append_path "$HOME/.fzf/bin"
 append_path "usr/local/games"
 append_path "/usr/games"
 append_path "/usr/local/games"

