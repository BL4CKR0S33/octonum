#!/bin/bash

update=$(git pull)
if [ "$update" == "Already up to date." ]
then
	echo "[+] Octonum already up to date."
else
	echo "[+] Downloading update ..."
	git pull > /div/null
	./unistall.sh > /div/null
	./install.sh > /div/null
	echo "[+] Done."
fi
