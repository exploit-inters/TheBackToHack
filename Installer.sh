#!/bin/bash
##################
BLUE='\033[94m'  #
RED='\033[91m'   #
GREEN='\033[32m' #
WHITE='\033[0m'	 #
##################
clear
echo
echo -e "${BLUE}[*]${RED}:${GREEN}Checking${RED}[ Internet ]${BLUE}connections${RED}........"
echo
  ping -c 1 google.com > /dev/null 2>&1
  if [ "$?" != 0 ]

then
sleep 3
clear
echo
echo
echo -e  "${RED}[!]${GREEN}:${BLUE}You Not Connected To The${RED}[ Internet ]${GREEN} ! "
echo
echo -e "${BLUE}[*]${RED}:${GREEN}Please Connect To The${RED}[ Internet ]${GREEN} And Try Again${RED} :)"
echo
exit
fi
echo
echo -e "${BLUE}[*]${RED}:${GREEN}[ Connected ]"
sleep 1
clear
echo
echo -e "${BLUE}[*]${RED}:${GREEN}Installing${RED}........${BLUE}"
sleep 2
echo
echo
if [ -f /usr/bin/python];then
sudo apt-get clean
sudo apt-get -y update
sudo pip install scapy
sudo pip install impacket
sudo pip install dnspython
sudo pip install pcapy
sudo pip install mechanize

else
sudo apt-get install python
sudo apt-get clean
sudo apt-get -y update
sudo pip install scapy
sudo pip install impacket
sudo pip install dnspython
sudo pip install pcapy
sudo pip install mechanize
fi
cp TheBackToHack /usr/bin
sleep 1
echo
echo
echo -e "${BLUE}[*]${RED}:${GREEN}Finshing........"
sleep 7
echo
echo -e "${BLUE}[*]${RED}:${GREEN}Done!"
sleep 2
echo
echo
echo -e -n "${BLUE}[?]${RED}:${GREEN}Do you Want Run ${RED}[ ${BLUE}TheBackToHack${RED} ] ${GREEN}? ${BLUE}[Y/n]: "
read cohice
if [[ $cohice = y || $cohice = Y ]]; then
clear
echo
echo -e "${BLUE}[*]${RED}:${GREEN} Runing${RED} TheBackToHack......${GREEN}"
sleep 1
echo
echo -e "[*]Welcome! :)${WHITE}"
sleep 2
sudo TheBackToHack
else
echo
echo -e "${RED}Done! ${BLUE}>> ${GREEN}Type [$BLUE TheBackToHack$GREEN ] In Your Termnal To Run! "
exit
fi