#!/bin/bash
clear
echo "------------------"
echo "|   Представься  |"
echo "|----------------|"
echo "| 1. Termux      |"
echo "| 2. Другой Unix |"
echo "|                |"
echo "| Введите 1/2:   |"
echo "--------------------"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install dos2unix
	pip install requests colorama proxyscrape
	cp ~/suckinator/suckinator.py /data/data/com.termux/files/usr/bin/suckinator
	dos2unix /data/data/com.termux/files/usr/bin/suckinator
	chmod -R 777 ~/suckinator
	chmod 777 /data/data/com.termux/files/usr/bin/suckinator
	suckinator
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "У вас нет прав. Запустите install.sh с root правами (sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests colorama proxyscrape
			cp ~/suckinator/suckinator.py /usr/bin/spymer
			dos2unix /usr/bin/suckinator
			chmod 777 /usr/bin/suckinator
			chmod -R 777 ~/suckinator
			suckinator
	else
