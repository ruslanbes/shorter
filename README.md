
**Shorter** is an opinionated pack of short versions (aliases) of some common commands. Adapted for Mac.

One shell file = one alias. Following the [single-responsibility principle](https://en.wikipedia.org/wiki/Single-responsibility_principle).

    source ~/shorter/shorter.zsh
    Loaded aliases:
    - f     : Search file by name
    - git-clean-branches    : Cleanup local orphaned branches
    - gp    : Git add all and push
    ...

# Installation

1. `cd ~` (or any directory of your choice)
2. `git clone <this-repository-url>`
3. `source ~/shorter/shorter.zsh`
4. If the result looks ok, write the previous command in `~/.zshrc`:

        echo "source ~/shorter/shorter.zsh" >> ~/.zshrc

# Adding new alias

1. `mkdir aliases/newalias`
2. `touch aliases/newalias/newalias.sh`
3. `echo -e "echo \"New alias\"\nalias newalias=\"ls -al\"" >> aliases/newalias/newalias.sh`
4. `reload`
5. `newalias`

# Removing alias

1. `rm -rf aliases/newalias`
2. `reload`
