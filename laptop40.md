# boot
grub 2:2.04-3
efibootmgr 16-2
intel-ucode 20191115-2

# network
netctl 1.20-2
dhclient 4.4.1-4
ifplugd 0.28-15

# lsusb
usbutils

# vim with +clipboard
gvim 8.1.2268-2

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


# desktop
chromium 78.0.3904.108-1
firefox 71.0-1

# i3
i3-wm 4.17.1-1
i3status 2.13-2

# sway
bemenu 0.1.0-1
midori 9.0-1

# telegram

telegram-desktop 1.8.15-2
libappindicator-gtk3 12.10.0-13



# printer Brother HL1202

Use the HL-1210W driver from AUR:
`yay -S aur/brother-hl1210w`

And add it to CUPs by going to `localhost:631`

That is not quite the hl-1202 provided by Brother on the download pages, but is from a PKGBUILD recipe
that includes the proper dependencies for using Brother's 32 bit drivers on a 64 machine.

Alternatively, we could make a new AUR package following the instructions on:

https://wiki.archlinux.org/index.php/Packaging_Brother_printer_drivers

But since the hl-1210W works for hl-1202 then maybe it is ok to just keep using that one.




