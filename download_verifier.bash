#!/usr/bin/env bash

get_download_verifier_for_each_operating_system(){
	local uname_s_output=$(uname -s)
	case "$uname_s_output" in
		Linux*) local operating_system="https://github.com/Solipath/Solipath/releases/download/latest-ubuntu_x86_64/download_verifier"
			;;
		Darwin*) local operating_system="https://github.com/Solipath/Solipath/releases/download/latest-macos_x86_64/download_verifier"
			;;
		CYGWIN*) local operating_system="https://github.com/Solipath/Solipath/releases/download/latest-windows_x86_64/download_verifier.exe"
			;;
		MINGW64*) local operating_system="https://github.com/Solipath/Solipath/releases/download/latest-windows_x86_64/download_verifier.exe"
			;;
		*)	local operating_system="UNKNOWN:${unameOut}"
	esac
	echo "$operating_system"
}

if [ ! -f ~/solipath/download_verifier ]; then
	curl --create-dirs --url  "$(get_download_verifier_for_each_operating_system)" -o ~/solipath/download_verifier
	chmod +x ~/solipath/download_verifier
fi
~/solipath/download_verifier "$@"
