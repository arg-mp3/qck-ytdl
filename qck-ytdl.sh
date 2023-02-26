#! /bin/sh
# This program utilizes the 'yt-dlp' library to extract M4A files out of the youtube AAC container.

# Move to downloads directory; if 'YtdlMusic' folder does not exist, create it and then move there.
cd ~/downloads ||{ echo "Failure: unable to locate '~/downloads' path"; exit 1;}
if [ ! -d "$downloads/ytdlmusic" ]; then mkdir YtdlMusic; else :; fi
cd ~/downloads/ytdlmusic || { echo "Failure: unable to locate '~/downloads/ytdlmusic' path (WHY?! IDFK :D)"; exit 1; }

printf "\n ↑↑↑↑↑↑↑↑↑↑↑↑↑ \n 
\e[1;31mYou've been moved to the downloads directory and a folder has been created (YtdlMusic) to store all downloaded files. 
Please do not delete said folder. If this folder already exists then continue.\e[0m"

# Just a little fun logo :3
printf "\n \n"
cat << "EOF"
                    `7MM                       mm         `7MM  `7MM  
                      MM                       MM           MM    MM  
  ,dW"Yvd   ,p6"bo    MM  ,MP'    `7M'   `MF'mmMMmm    ,M""bMM    MM  
 ,W'   MM  6M'  OO    MM ;Y         VA   ,V    MM    ,AP    MM    MM  
 8M    MM  8M         MM;Mm          VA ,V     MM    8MI    MM    MM  
 YA.   MM  YM.    ,   MM `Mb.         VVV      MM    `Mb    MM    MM  
  `MbmdMM   YMbmd'  .JMML. YA.        ,V       `Mbmo  `Wbmd"MML..JMML.
       MM                            ,V                               
     .JMML.                       OOb"  
__________________/\//\/\/\/\_________________________________________
EOF
printf "\n"


# Greet user
printf "\e[1;36m\e[47m        Welcome! Please enter a youtube link below to download        \e[0m\n"


exit=''
while [ "$exit" != 'x' ];
do
  echo "Link (Enter 'x' to exit):" && read -r link
    if [ "$link" = 'x' ]; then
      printf "\e[1;35m\e[47m                                Later!                                \e[0m\n"
      break
    fi
  yt-dlp -o "%(title)s.%(ext)s" -f m4a --embed-thumbnail "$link"
#    link2=$("${link}" tr -d '[:space:]')
    printf "\e[1;32mComplete!\e[0m\n"
done

# Send back to home directory
cd ~ || exit
