Useful shell aliases for Linux. One shell file = one alias. Following the [single-responsibility principle](https://en.wikipedia.org/wiki/Single-responsibility_principle).

       $ source ~/linux-bash-aliases/linux-bash-aliases.sh
        Loaded aliases:
        - f     : Search file by name
        - git-clean-branches    : Cleanup local orphaned branches
        - gp    : Git add all and push
        ...


# Installation

1. `$ cd ~` (or any directory of your choice)
2. `$ git clone <this-repository-url>`
3. `$ source ~/linux-bash-aliases/linux-bash-aliases.sh`
4. If the result looks ok, write the previous command in `~/.bashrc`:

        $ echo "source ~/linux-bash-aliases/linux-bash-aliases.sh" >>~/.bashrc

# Adding new alias

1. `$ mkdir aliases/newalias`
2. `$ touch aliases/newalias/newalias.sh`
3. `$ echo -e "echo \"New alias\"\nalias newalias=\"ls -al\"" >> aliases/newalias/newalias.sh`
4. `$ reload`
5. `$ newalias`

# Removing alias

1. `rmrf aliases/newalias`
2. `$ reload`