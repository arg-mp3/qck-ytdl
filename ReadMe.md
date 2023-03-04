## About

Qck-ytdl is a little script that will extract the M4A file directly out of the AAC youtube container without the need for a GUI. Extracting the M4A file directly will prevent any reduction in quality that would be endured after compression to other file type formats otherwise. It also embeds the thumbnail and removes the youtube ID [hextext] that's usually pulled unless explicitly declared. 

**NOTE - A new folder will be created in your *'~/downloads' directory labeled 'Ytdl-Music'* which will store all your DL's there. 

****-Please do not delete said directory.-**** 



## How to install

### 1. If [Homebrew](https://brew.sh/) package manager is not installed, install it via Terminal with the supplied command: 
Package manager dedicated to MacOS

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`


### 2. Install Python (If you have 2.6, 2.7, or 3.2+ already, skip this):
Python is needed for yt-dlp to operate

`brew install python 3.11`



### 3. Install ['yt-dlp'](https://github.com/yt-dlp/yt-dlp) brew forumlae:
This will DL the yt-dlp fork

`brew install yt-dlp`


### 4. Install ['ffmpeg'](https://ffmpeg.org/) multimedia framework forumlae:
This will install the multimedia frameworks that allow container extraction/conversion.

`brew install ffmpeg`


### 5. Download shell script
[Repo ZIP download](https://github.com/arg-mp3/qck-ytdl/archive/refs/heads/main.zip)


After everything is installed. Run the shellscript which will then provide a prompt to include the HTML link to the video you wish to install and enjoy :). 


If things begin to slow down at all. Try clearing the yt-dlp system cache by entering the following outside of the script: 'yt-dlp --rm-cache-dir'
