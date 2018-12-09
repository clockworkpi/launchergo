# GameShell launcher
This is the launcher for GameShell based on 320x240 resolution and D-Pad layout.
![Screenshot](https://github.com/clockworkpi/GameShellDocs/blob/master/screenshot.png)

# Create the necessary user and group
* User name: cpi
* Password: cpi
* Group ID: 31415 with group name: cpifav

```
sudo adduser cpi  
sudo groupadd cpifav -g 31415  
sudo adduser cpi cpifav  
```

# Directory structure
```
/home/cpi/
├── launchergo <- Here we are
├── apps
│   ├── emulators
│   └── Menu 
├── games
│   ├── FreeDM
│   ├── MAME
│   └── nxengine
└── music
```
## Create the necessary directories
```
mkdir -p /home/cpi/apps/emulators  
mkdir -p /home/cpi/games  
mkdir -p /home/cpi/music  
```

# Dependent packages
* wicd (For Wi-Fi)
* mpd (For music player)

# Create “.mpd_cpi.conf” config

vim ~/.mpd_cpi.conf

```
music\_directory    "/home/cpi/music"
playlist\_directory    "/home/cpi/music/playlists"
db\_file    "/home/cpi/music/tag\_cache"
log\_file    "/tmp/mpd.log"
pid\_file    "/tmp/mpd.pid"
state\_file    "/home/cpi/music/mpd\_state"
sticker\_file    "/home/cpi/music/sticker.sql"
user    "cpi"
bind\_to\_address    "/tmp/mpd.socket"
auto\_update    "yes"
auto\_update\_depth    "3" 
input {
    plugin "curl"
}

audio\_output {
    type    "alsa"
    name    "My ALSA Device"
}

audio\_output {
    type    "fifo"
    name    "my_fifo"
    path    "/tmp/mpd.fifo"
    format    "44100:16:2"
}

filesystem\_charset    "UTF-8"
```
