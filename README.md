# Configuration

- Bash aliases
- Git
- Vim
- Tmux

Color themes from [Tinted-theming](https://github.com/tinted-theming/base16-shell), (gallery found [here](https://tinted-theming.github.io/base16-gallery/)).

To disable the beep in bash you need to uncomment (or add if not already there) the line "set bell-style none" in your /etc/inputrc file.

To disable the beep and the visual bell also in vim you need to add the following to your ~/.vimrc file:

```vim
set visualbell
set t_vb=
```

To disable the beep also in less (i.e. also in man pages and when using "git diff") you need to add export LESS="$LESS -R -Q" in your ~/.profile file.

Run this in the terminal to remove dir background color for LS_COLORS:

```bash
$ dircolors -p | sed 's/;42/;01/' > ~/.dircolors
```

## Docker on WSL2 without Docker Desktop

Follow [these steps](https://dev.solita.fi/2021/12/21/docker-on-wsl2-without-docker-desktop.html):

- On Windows: uninstall Docker Desktop
- On WSL2:

```bash
$ sudo apt remove docker docker-engine docker.io containerd runc
$ sudo apt update
$ sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2
$ source /etc/os-release
$ curl -fsSL https://download.docker.com/linux/${ID}/gpg | sudo apt-key add -
$ echo "deb [arch=amd64] https://download.docker.com/linux/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/docker.list
$ sudo apt update
$ sudo apt install docker-ce docker-ce-cli containerd.io
$ sudo usermod -aG docker $USER
$ DOCKER_DIR=/mnt/wsl/shared-docker
$ mkdir -pm o=,ug=rwx "$DOCKER_DIR"
$ sudo chgrp docker "$DOCKER_DIR"
$ sudo mkdir /etc/docker
$ sudo vim /etc/docker/daemon.json
```

```vim
{
   "hosts": ["unix:///mnt/wsl/shared-docker/docker.sock"],
   "iptables": false
}
```
