RESTORE=$(echo -en '\001\033[0m\002')

BLACK=$(echo -en '\001\033[00;30m\002')
RED=$(echo -en '\001\033[00;31m\002')
GREEN=$(echo -en '\001\033[00;32m\002')
YELLOW=$(echo -en '\001\033[00;33m\002')
BLUE=$(echo -en '\001\033[00;34m\002')
PURPLE=$(echo -en '\001\033[00;35m\002')
CYAN=$(echo -en '\001\033[00;36m\002')
LGRAY=$(echo -en '\001\033[00;37m\002')

GRAY=$(echo -en '\001\033[00;90m\002')
LRED=$(echo -en '\001\033[00;91m\002')
LGREEN=$(echo -en '\001\033[00;92m\002')
LYELLOW=$(echo -en '\001\033[00;93m\002')
LBLUE=$(echo -en '\001\033[00;94m\002')
LPURPLE=$(echo -en '\001\033[00;95m\002')
LCYAN=$(echo -en '\001\033[00;96m\002')
WHITE=$(echo -en '\001\033[00;97m\002')

echo ${BLACK}BLACK
echo ${RED}RED
echo ${GREEN}GREEN
echo ${YELLOW}YELLOW
echo ${BLUE}BLUE
echo ${PURPLE}PURPLE
echo ${CYAN}CYAN
echo ${LGRAY}LIGHTGRAY
echo ${GRAY}DARKGRAY
echo ${LRED}LIGHTRED
echo ${LGREEN}LIGHTGREEN
echo ${LYELLOW}LIGHTYELLOW
echo ${LBLUE}LIGHTBLUE
echo ${LPURPLE}LIGHTPURPLE
echo ${LCYAN}LIGHTCYAN
echo ${WHITE}WHITE
