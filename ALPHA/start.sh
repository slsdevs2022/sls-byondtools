#!/bin/bash
PS3='Please pick your option '
foods=("Compile" "Compile & Host" "Host" "Exit")
select fav in "${foods[@]}"; do
    case $fav in
        "Compile")
            sudo sh /compile.sh
        "Compile & Host")
            sudo sh /compile-host.sh
        "Host")
            sudo sh /host.sh
	"Exit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done