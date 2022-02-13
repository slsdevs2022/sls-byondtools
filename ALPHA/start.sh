#!/bin/bash
PS3='Please pick your option '
choice=("Compile" "Compile & Host" "Host" "Exit")
select fav in "${choice[@]}"; do
    case $fav in
		##"Install")
		##	sudo sh /install-byond.sh 
        "Compile")
            sudo sh /compile.sh
			;;
        "Compile & Host")
            sudo sh /compile-host.sh
			;;
        "Host")
            sudo sh /host.sh
			;;
	"Exit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done