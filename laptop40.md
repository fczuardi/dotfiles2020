# boot
grub 2:2.04-3
efibootmgr 16-2
intel-ucode 20191115-2

# network
netctl 1.20-2
dhclient 4.4.1-4
ifplugd 0.28-15

# vim with +clipboard


## sudo wifi-menu without password
visudo
```
ALL ALL=(ALL) NOPASSWD: /usr/bin/wifi-menu
```

# compiling tools
base-devel
Packages (26) guile-2.2.6-1  libmpc-1.1.0-2  autoconf-2.69-6  automake-1.16.1-2  binutils-2.33.1-2  bison-3.4.2-2  fakeroot-1.24-2  file-5.37-5  findutils-4.7.0-2  flex-2.6.4-3  gawk-5.0.1-2  gcc-9.2.0-4 gettext-0.20.1-3  grep-3.3-3  groff-1.22.4-2  gzip-1.10-3  libtool-2.4.6+42+gb88cebd5-8  m4-1.4.18-3  make-4.2.1-4  pacman-5.2.1-1  patch-2.7.6-8  pkgconf-1.6.3-3  sed-4.7-3  sudo-1.8.29-1 texinfo-6.7-2  which-2.21-5

# yay
cd ~/github
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si


# dotfiles tracked by a git bare
https://www.atlassian.com/git/tutorials/dotfiles


# work

## git
git 2.24.0-1

## nvm
https://wiki.archlinux.org/index.php/Node.js_#Alternate_installations

```
yay -S nvm
```

.bashrc
```
# Set up Node Version Manager
export NVM_DIR="$HOME/.nvm"                            # You can change this if you want.
export NVM_SOURCE="/usr/share/nvm"                     # The AUR package installs it to here.
[ -s "$NVM_SOURCE/nvm.sh" ] && . "$NVM_SOURCE/nvm.sh"  # Load NVM
```
## pyenv 
https://realpython.com/intro-to-pyenv/

pyenv 1.2.15-1

### pyenv requirements for building python versions
https://github.com/pyenv/pyenv/wiki/common-build-problems

### pyenv python versions

sudo pacman -S openssl-1.0 

LDFLAGS="-L/usr/lib/openssl-1.0" CFLAGS="-I/usr/include/openssl-1.0" pyenv install -v 2.7.12

LDFLAGS="-L/usr/lib/openssl-1.0" CFLAGS="-I/usr/include/openssl-1.0" pyenv install -v 3.5.2

### pyenv virtualenv plugin

https://github.com/pyenv/pyenv-virtualenv

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv

#### stoq pyton virtualenvs



# desktop
chromium 78.0.3904.108-1
firefox 71.0-1

# i3
i3-wm 4.17.1-1
i3status 2.13-2

# sway
bemenu 0.1.0-1
midori 9.0-1



autoconf 2.69-6
automake 1.16.1-2
base 2-2
bemenu 0.1.0-1
binutils 2.33.1-2
bison 3.4.2-2
chromium 78.0.3904.108-1
dhclient 4.4.1-4
dialog 1:1.3_20191110-2
dmenu 4.9-1
efibootmgr 16-2
elinks 0.13-21
fakeroot 1.24-2
firefox 71.0-1
flex 2.6.4-3
gcc 9.2.0-4
git 2.24.0-1
grub 2:2.04-3
gvfs 1.42.2-1
i3-wm 4.17.1-1
i3status 2.13-2
ifplugd 0.28-15
intel-ucode 20191115-2
keepassxc 2.5.1-1
kitty 0.15.0-1
kitty-terminfo 0.15.0-1
linux 5.4.1.arch1-1
linux-firmware 20191022.2b016af-3
m4 1.4.18-3
make 4.2.1-4
man-db 2.9.0-1
man-pages 5.04-2
midori 9.0-1
netctl 1.20-2
nvm 0.35.0-1
openssh 8.1p1-2
patch 2.7.6-8
pkgconf 1.6.3-3
pyenv 1.2.15-1
rsync 3.1.3-1
sudo 1.8.29-1
sway 1:1.2-5
swayidle 1.5-1
swaylock 1.4-2
texinfo 6.7-2
thunar 1.8.11-1
thunar-volman 0.9.5-2
vi 1:070224-4
vim 8.1.2268-2
wget 1.20.3-2
wpa_supplicant 2:2.9-2
xf86-video-vesa 2.4.0-2
xorg-bdftopcf 1.1-1
xorg-docs 1.7.1-2
xorg-font-util 1.3.2-1
xorg-fonts-100dpi 1.0.3-4
xorg-fonts-75dpi 1.0.3-4
xorg-fonts-encodings 1.0.5-1
xorg-iceauth 1.0.8-1
xorg-luit 1.1.1-3
xorg-mkfontscale 1.2.1-1
xorg-server 1.20.6-1
xorg-server-common 1.20.6-1
xorg-server-devel 1.20.6-1
xorg-server-xdmx 1.20.6-1
xorg-server-xephyr 1.20.6-1
xorg-server-xnest 1.20.6-1
xorg-server-xvfb 1.20.6-1
xorg-server-xwayland 1.20.6-1
xorg-sessreg 1.1.2-1
xorg-setxkbmap 1.3.2-1
xorg-smproxy 1.0.6-2
xorg-x11perf 1.6.1-1
xorg-xbacklight 1.2.3-1
xorg-xcmsdb 1.0.5-2
xorg-xcursorgen 1.0.7-1
xorg-xdpyinfo 1.3.2-2
xorg-xdriinfo 1.0.6-1
xorg-xev 1.2.3-1
xorg-xgamma 1.0.6-2
xorg-xhost 1.0.8-1
xorg-xinit 1.4.1-1
xorg-xinput 1.6.3-1
xorg-xkbcomp 1.4.2+7+g29fda8e-1
xorg-xkbevd 1.1.4-2
xorg-xkbutils 1.0.4-3
xorg-xkill 1.0.5-1
xorg-xlsatoms 1.1.3-1
xorg-xlsclients 1.1.4-1
xorg-xpr 1.0.5-1
xorg-xrandr 1.5.1-1
xorg-xrefresh 1.0.6-1
xorg-xsetroot 1.1.2-1
xorg-xvinfo 1.1.4-1
xorg-xwd 1.0.7-1
xorg-xwininfo 1.1.5-1
xorg-xwud 1.0.5-1
yay 9.4.2-1
