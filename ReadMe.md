## About

Qck-ytdl is a little script that will ectract the M4A file directly out of the AAC/MPG youtube container without the need for a GUI. Extracting the M4A file directly will prevent any reduction in quality that would be endured after compression to other file type formats. 

**NOTE - A new folder will be created in your '~/downloads' directory labeled 'Ytdl-Music' which will store all your DL's there. Please do not delete said directory.** 



## How to install

### 1. If [Homebrew-Package](https://brew.sh/) is not installed, install it via Terminal with the supplied command: 

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`


### 2. Install ['yt-dlp'](https://github.com/yt-dlp/yt-dlp) brew forumlae:
`brew install yt-dlp`


### 3. Install ['ffmpeg'](https://ffmpeg.org/) multimedia framework forumlae:
`brew install ffmpeg`


### 4. Download shell script

After everything is installed. Run the shellscript which will then provide a prompt to include the HTML link to the video you wish to install. 