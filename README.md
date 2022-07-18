# set-wallpaper.sh
>*Script that sets wallpaper for multiple monitors and generates a colorscheme with pywal*

# Requirements
 - Bash
 - nitrogen
 - [pywal](https://github.com/dylanaraps/pywal)
 
 # Installation
 ### Clone the repo
 ```bash
 $ git clone https://github.com/JackMechem/set-wallpaper.git
 $ cd set-wallpaper
 ```
 ### Install the script
 ```bash
 $ ./set-wallpaper.sh install
 ```
 *This will copy the script into /usr/local/bin/*
 
 # Usage
 ### Main Command
 ```bash
 $ set-wallpaper
 ```
 ### Options
  ```bash
 $ set-wallpaper help
 ```
 >*Shows list of commands*
 
 ```bash
 $ set-wallpaper Directory/to/wallpaper.jpg
 ```
 >*Set wallpaper to image provided*
 
  ```bash
 $ set-wallpaper install
 ```
 >*Installs script into /usr/local/bin/*
