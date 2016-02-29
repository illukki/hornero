#!/bin/bash
#################################
# Search for dependencies		#
# Author:	Daniel Olivera		#
#								#
# Modified: Diego Calbo			#
# Date:		01/28/2015			#
#								#
# Devel Team - UTUTO Project	#
#################################

ls -1 packages/i686 | sed "s/.tbz2//"> tmp/listado-paquetes-buscar.txt
clear

while read PKG
do
	echo "Looking for dependencies of $PKG..."
	./00-compile-list.sh =$PKG
done < tmp/listado-paquetes-buscar.txt

rm -rf tmp/listado-paquetes-buscar.txt
cp -a compile.list/compile.list.* scripts
rm -rf scripts/compile.list.pkg
rm -rf scripts/compile.list.ori
echo "Done!"
