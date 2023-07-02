#main.sh
#colorscheme app for testing colors in terminal
#Author: Hubert Topolski (majster247)
#License: MIT
#Version: 1.0.0
#Date: 2023-07-01
#Github: https://www.github.com/majster247


#define colors for text
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightred='\033[1;31m'
lightgreen='\033[1;32m'
yellow='\033[1;33m'
lightblue='\033[1;34m'
lightpurple='\033[1;35m'

#define background colors
blackbg='\033[0;40m'
redbg='\033[0;41m'
greenbg='\033[0;42m'
orangebg='\033[0;43m'
bluebg='\033[0;44m'
purplebg='\033[0;45m'
cyanbg='\033[0;46m'
lightgraybg='\033[0;47m'
darkgraybg='\033[1;40m'
lightredbg='\033[1;41m'
lightgreenbg='\033[1;42m'
yellowbg='\033[1;43m'
lightbluebg='\033[1;44m'
lightpurplebg='\033[1;45m'

#define reset color
reset='\033[0m'


#clear screen
clear




#print table of all colors mixed with all background colors
echo -e "         40m     41m     42m     43m     44m     45m     46m     47m     48m"
for i in {0..15}; do
    #if $i > 7 then change code
    if [ $i -gt 7 ]; then
        i=$((i-8))
        echo -e "1;3${i}m \c"
    else
        echo -e "0;3${i}m \c"
    fi
    
    for j in {0..8}; do
        #if $i > 7 then change code
        if [ $i -gt 7 ]; then
            i=$((i-8))
            j=$((j+8))
            code=" \033[0;3${i};4${j}m"
        else
            code=" \033[0;3${i};4${j}m"
        fi
        echo -en " $code"
        echo -en " nix "
        echo -en "$reset "
    done
    echo -e ""
done


#end of script
