#!/bin/sh -x

do_preinst()
{
    	echo "do_preinst"
	rm /media/imx7s-warp.dtb
   	exit 0
}

do_postinst()
{
    	echo "do_postinst"

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

