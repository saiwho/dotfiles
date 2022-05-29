###############################################################################

# ALIASES 

# Common aliases and Color support
# Enable color support of ls and also add handy aliases
if test -x /usr/bin/dircolors 
  test -x ~/.dircolors && eval "dircolors -b ~/.dircolors" 
  #alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias diff='diff --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias open='xdg-open'
  alias egrep='egrep --color=auto'
else 
  alias open='xdg-open'
  #alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias diff='diff --color=auto'
end

# To 'cd' Avoid mistakes
alias dc="cd" 

# exa/ls
if command -s exa > /dev/null
  alias ls='exa'
  alias sl='exa'
else
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'
end

# bat - For cat, less
alias bat-themes='batcat --list-themes'
command -s batcat > /dev/null && alias cat='batcat --pager=never' # Alias bat=cat
command -s batcat > /dev/null && alias less='batcat' # Alias less=cat

# Misc
alias my-ip="curl ipinfo.io/ip 2 > /dev/null"

###############################################################################


###############################################################################

# SECRET ALIASES
if test -f ~/.config/fish/secret-aliases.fish
    source ~/.config/fish/secret-aliases.fish 
end

# LOCAL ALIASES
if test -f ~/.config/fish/local-aliases.fish 
    source  ~/.config/fish/local-aliases.fish 
end
###############################################################################
