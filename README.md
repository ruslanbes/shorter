Useful shell aliases for Linux

       $ source ~/linux-bash-aliases/linux-bash-aliases.sh
        Loaded aliases:
        - f.sh  : f - search file by name
        - git-clean-branches.sh : git-clean-branches - cleanup local orphaned branches
        - j.sh  : j - autojump for linuxbrew
        - jh.sh : jh - Use fzf to quickly cd into directories relative to the current one, mnemonic 'jump here'
        - k.sh  : k, kcl - Kubectl + contexts switching aliases
        - l.sh  : l - quick and convenient directory listing
        - mkcd.sh       : mkcd - Create a folder and move into it in one command
        - pubip.sh      : pubip - print your public ip
        - python.sh     : python3 - make it default
        - r.sh  : r - search by content
        - reload.sh     : reload shell
        - rm.sh : rmf, rmrf
        - watch.sh      : watch with aliases and colors (if possible)


# Installation

1. `$ cd ~` (or any directory of your choice)
2. `$ git clone <this-repository-url>`
3. `$ source ~/linux-bash-aliases/linux-bash-aliases.sh`
4. If it looks ok, add the previous command at the end of the `~/.bashrc`:

        $ echo "source ~/linux-bash-aliases/linux-bash-aliases.sh" >>~/.bashrc

# Adding more aliases

1. Create new alias script file in this directory
2. Run `$ exec $SHELL -l` or `$ reload`

# Removing aliases

1. Delete the alias file (or comment it out)
2. Run `$ exec $SHELL -l` or `$ reload`