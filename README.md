# Yubikey-Guide

Table of Contents

1. [Introduction](#introduction)
1. [Windows](#windows)
    1. [Required Software](#win-requiredsoftware)
    1. [Software Configuration](#win-softwareconfiguration)
    1. [Key Generation](#win-keygeneration)
1. [Linux](#linux)

## Introduction <a name="introduction">

A Yubikey is a smart key. You can use it to create a private key and authenticate yourself to different online services.
This guide will focus on GPG and SSH key generation and how to use them to:

* login to servers
* sign your git commits
* authenticate yourself with github/bitbucket/etc.

This guide will be split of into different sections based on which operating system you use. Please visit contributing.md to add support for other operating systems.
 
If this guide was useful for you, please make sure to start it. It helps with the visibility of it on search engines.

## Windows <a name="windows">

This section of the guide is for windows users. Windows is one of the more complicated of the platforms to use Yubikey with, however it is possible.

### Required Software <a name="win-requiredsoftware">

1. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
1. [git for Windows](https://git-scm.com/)
1. [gpg4win](https://www.gpg4win.org/)


#### PuTTY
Install all the features provided by putty.
 
Definitely make sure plink is being installed..

#### git for windows
    
* Pick the components you want to install (I recommend all of them).
* Enable use Git and optional Unix tools from the Windows Command Prompt.
    * _The second option could be used as well, however you might need to do extra steps to make sure your PATH variable has everything you need._
* **IMPORTANT** Pick Use (Tortoise)Plink and make sure the path is correct.
* Pick the checkout you want.
* I recommend choosing MinTTY.
* Enable the first two options (you can enable the third option but it is not necessary).
* Install

#### gpg4win

I recommend you install all components. Especially GPA makes creating the settings easier, however the guide will cover both the cases of it being installed and not being installed.

## Software Configuration

### GPA (GNU Privacy Assistant)

If you installed the program:

* Open GPA
* Edit->Backend Preferences
* GPG Agent Tab
* Mark enable-putty-support
* Apply and close

If you have not installed the program

* Open explorer
* Go to `%appdata%\gnupg\`
* Open `gpg-agent.conf` in a proper text editor (Seriously, don't use Windows' Notepad)
* Put this line inside the file `enable-putty-support`
* Save it

Once you're done with one of the above, you need to restart the agent.

Open cmd, cd to where you have installed gpg4win. For me this is at `C:\Program Files (x86)\GNU\GnuPG\`
Run the following two commands:

```
gpg-connect-agent.exe killagent /bye
gpg-connect-agent.exe /bye
```

## Key Generation <a name="win-keygeneration">

This is probably the most important part this guide. There are hundreds of guides out there that make you generate the private key on your host and then push it to your Yubikey. This is a terrible idea and effectively reduces your security by a large amount. Simply, do not do this.


 

