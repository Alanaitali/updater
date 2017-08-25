#!/bin/sh -x

do_preinst()
{
    	echo "do_preinst"
   	exit 0
}

do_postinst()
{
    	echo "do_postinst"
    	
    	rpm -iv --replacepkgs /home/resetnet-0.1-r0.cortexa7hf_neon.rpm
    	rm /home/resetnet-0.1-r0.cortexa7hf_neon.rpm
    	
   	exit 0
}

case "$1" in
preinst)
    echo "call do_preinst"
    do_preinst
    ;;
postinst)
    echo "call do_postinst"
    do_postinst
    ;;
*)
    echo "default"
    exit 1
    ;;
esac

