Useful shell tools for Linux

# Installation

1. `$ cd ~` (or any directory of your choice)
2. `$ git clone <this-repository-url>`
3. `$ source ~/linux-bash-aliases/linux-bash-aliases.sh`
4. If it looks ok, add the previous command at the end of the `~/.bashrc`:

        $ echo "source ~/linux-bash-aliases/linux-bash-aliases.sh" >>~/.bashrc

# Extending with yor aliases

1. Create new alias script file in this directory
2. Run `$ exec $SHELL -l` or `$ reload`