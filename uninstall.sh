#!/bin/bash


if [ -d "/usr/share/octonum" ] ;
then
	sudo rm "/usr/local/bin/octonum";
	sudo rm -R "/usr/share/octonum";
	echo "[!] Deleted successfully.";
else
	echo "[!] Tool already deleted.";
fi
