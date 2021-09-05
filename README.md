# saiwho's dotfiles

This repository contains configuration files for shell, cli-programs I usually use in my Linux machine. I am using **dotbot** to manage dotfiles. Go through this [blog post](https://www.elliotdenolf.com/posts/bootstrap-your-dotfiles-with-dotbot) to get started with dotbot to manage your dotfiles. Please feel free to clone and use it.



### File Structure & Information




```bash
.
├── aspell                  # -- Aspell ---------------
│   ├── aspell.conf         # aspell config
│   ├── aspell.en.prepl     # personal replacement dictionary i.e misspelled word -> correction
│   └── aspell.en.pws       # personal dictionary for new words, etc,.
├── bash                    # -- Bash ---------------
│   ├── bash_login          # login shell
│   ├── bash_logout         # logout shell
│   ├── bash_profile        # profile
│   ├── bashrc              # bash config
│   └── inputrc             # keyboard config
├── dotbot                  # -- dotbot git submodule --------------- 
│   ├── bin                 
│   ├── CHANGELOG.md
│   ├── CONTRIBUTING.md
│   ├── dotbot
│   ├── lib
│   ├── LICENSE.md
│   ├── README.md
│   ├── setup.cfg
│   ├── setup.py
│   ├── test
│   └── tools
├── env                     # -- Environment setup ---------------
│   ├── aliases             # aliases
│   ├── env                 # environment config
│   └── profile             # profile
├── fish                    # -- Fish shell ---------------
│   ├── completions         # autocompletions
│   ├── conf.d              # don't know, people use this for config, need to look.
│   ├── config.fish         # fish config
│   ├── fish_variables      # inbuilt/custom fish shell variables
│   └── functions           # inbuilt/custom fish shell functions
├── git                     # -- git ---------------
│   ├── gitconfig           # git config
│   └── gitignore_global    # ignore these files in commit globally
├── install                 # A dotbot install file, `./install` to symlink all config files in to system.
├── install.conf.yaml       # dotbot config file - setting paths, symlinks, etc,. 
├── misc-cli                # -- Miscellaneous CLI tools ---------------
│   ├── bat                 # bat config
│   ├── curlrc              # curl config
│   ├── latexmkrc           # latex config
│   ├── nanorc              # nano config
│   └── ripgreprc           # ripgrep config
├── README.md               # -- Documentation ---------------
├── scripts                 # -- Additional scripts for small tasks ---------------
│   └── bin
├── shell-setup.sh          # -- Shell setup i.e installing Shell, CLI tools, etc,.
├── terminal                # -- Terminal setup ---------------
│   └── kitty               # Kitty config files
├── tmux                    # -- tmux ---------------
│   ├── screenrc            # screen config
│   ├── tmux.conf           # tmux config
│   └── tmux-remote.conf    # tmux remote config
├── todo.md                 # -- To Do like installing programs, customization, etc for next ---------------
├── vim                     # -- Vim ---------------
│   ├── vim                 # plugins, themes, etc,..
│   └── vimrc               # vim config
└── zsh                     # -- Zsh ---------------
    ├── p10k.zsh            # Powerlevel10k prompt
    └── zprezto             # Prezto config files
```



### Installation

For installing i.e symlinking all the config files,

```bash
$ git clone https://github.com/saiwho/dotfiles.git # Clone repo
$ cd dotfiles                                      # Go to dotfiles directory
$ ./install                                        # Install
```



### Feedback

Both improvements and suggestions are welcome!
