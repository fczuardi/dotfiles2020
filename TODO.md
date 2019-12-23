# To do

- [ ] [sway] make Telegram-desktop work natively on wayland
- [ ] [i3] network widget, maybe nm-applet?
- [ ] [work] install docker
- [ ] [work] install gitlab-runner
- [ ] [web] audio on youtube
- [ ] [fn-keys] make mute/unmute work
- [ ] [pacman] gui for regular updates
- [ ] [vim] show typed command on status line
- [ ] [vim] space as leader
- [ ] [vim] persistend undo
- [ ] [vim] clipboard
- [ ] [vim] alias :W to :w
- [ ] [tty] permanent set console font to iso01-12x22
- [ ] [i3status] better battery indicator
- [ ] [displays] i3 detect and setup second monitor
- [ ] [displays] make fn keys for brightness work
- [ ] [keepassXC] browser integrations
- [ ] [wayland] make chrome work


# Done

- [x] [desktop] setup printer
  - currently using the aur/brother-hl1210w package, that although is not the specif driver for hl-1202, has the correct dependencies for running Brother's 32 bit binary drivers
- [x] [sway] config multiple monitors (for my home), DP-1 right-of eDP1
  - super easy, there was a helpful comment on the default config, use `swaymsg -t get_outputs` to list the monitors and add the proper `output` lines to the config file
- [x] [telegram] enable native notifications
  - libappindicator-gtk3 is required by telegram
  - notification daemons compatible: twmn-git, notification-daemon
  - para iniciar o notification-daemon manualmente: `/usr/lib/notification-daemon-1.0/notification-daemon`
- [x] [bash] autocomplete for branch names
- [x] [telegram] install telegram
- [x] [pyenv] multiple python versions installed
- [x] [pyenv] install virtualenvs plugin https://github.com/pyenv/pyenv-virtualenv
- [x] git branch on bash prompt
- [x] [wayland] make firefox work
- [x] ssh-agent
