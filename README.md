# Project Title

This is a small bash practice project I made to toggle a terminal display on and off. This is supposed to emulate iterm2 behaviour. Very primitive at the moment, but hey, it works. Tested only on Ubuntu

## Getting Started

You might what to install your favorite terminal emulator. Make sure that the terminal you're using can be deployed fom terminal with a title.

### Prerequisites

This plugin needs you to install xdotool.

```
sudo apt update
sudo apt install xdotool

```

### Installing

Download the toggle.sh file to your home directory.
Then add a key board short cut to open your terminal with a specified name. In ubuntu, it can be achived as follows

```
open preferences > key board > custom shorcuts > add
```
name the keyboard shortcut whatever you want and add the command to open up your terminal with a specified title.
Mine goes

```
terminator --title terminator-terminal
(you can replace terminator with gnome-terminal etc. Replace the TERMINAL variable in toggle.sh with the terminal name you're using.
 Just make sure you're using the same title. If you change the title, then open toggle.sh file and change the TITLE variable to whatever title you input in the above command)
```
and add the keyboad shortcut as ctrl+alt+t

now add another keybaord with keys ctrl + ~ (or anything you want) and add the command as 
```
bash /home/USER/toggle.sh
(Replace USER with your user name in the above command)
```
and you're done. You can use the keyboard shortcut you input to toggle the terminal on and off like iterm2 does. If there are multiple terminals open it'll toggle all of them on and off. If no terminal with TITLE was open in the first place, a new terminal is opened.


## Authors

* **Vamshi Aruru**
