#!/bin/bash
clear
echo "--------------------"
echo "|  Представься     |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Другой Unix   |"
echo "| 3. IOS (Ish)     |"
echo "|                  |"
echo "|  Введите 1/2/3:  |"
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
			cp ~/suckinator/suckinator.py /usr/bin/suckinator.py
			dos2unix /usr/bin/suckinator
			chmod 777 /usr/bin/suckinator
			chmod -R 777 ~/suckinator
			suckinator
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			pip3 install proxyscrape
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			spymer
		else
			echo "Некорректный ввод"
		fi
	fi
fi
