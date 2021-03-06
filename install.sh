#!/bin/bash

if [ -d "/usr/share/octonum" ] ;
then
	echo "[!] Tool already installed, type octonum in your terminal."
else
	echo -n "[+] Installing packages ... "
	pip3 install phonenumbers > /dev/null
	echo "[OK]"
	sudo cp -r "." "/usr/share/octonum";
	sudo echo -e "#!/bin/bash
	python3 /usr/share/octonum/octonum.py" '${1+"$@"}' > "octonum";
	sudo cp "octonum" "/usr/local/bin/octonum";
	sudo chmod +x "/usr/local/bin/octonum";
	rm "octonum";
	echo "[+] Installation completed"
fi
