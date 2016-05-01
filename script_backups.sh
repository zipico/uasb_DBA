#!/bin/bash
USER="admin_user"
PASS="Admin1"
BASE="musicdb1"
DIR="/home/esjap/uasb_DBA"
FECHA=`date +%d-%m-%Y`

echo "Hora del backup: `date +%H:%M:%S`" >> $DIR/musicdb1[$FECHA].log

ESPACIO_OCUPADO=`df /$DIR | awk '{print $5}' | grep -a %
ESPACIO_OCUPADO=`expr match “$ESPACIO_OCUPADO” '\([0-9]*[0-9]\)'`

if [ $ESPACIO_OCUPADO -le 85 ];
then
	for BASE in $BASE
do
	mysqldump -u $USER -p$PASS $BASE --opt > $DIR/musicdb1_$indice[$FECHA].sql
	((indice++))
done

indice=1
for indice in 1 2
do
	tar -czvf $DIR/musicdb1_$indice[$FECHA].sql.tar.gz $DIR/musicdb1_$indice[$FECHA].sql >> $DIR/musicdb1[$FECHA].log
done

for indice in 1 2
do
	if [ -f $DIR/musicdb1_$indice[$FECHA].sql ]; #comprobamos si se efectuó el backup
	then
		if [ -f $DIR/musicdb1_$indice[$FECHA].sql.tar.gz ]; #comprobamos si se comprimió.
		then
			find $DIR/musicdb1* -mtime +15 -exec rm -r -f {} \;
		else
			echo "La compresión del backup realizado el $FECHA no se ha podido llevar a cabo, por algún problema. Se mantiene almacenado la compresión del backup anterior" >> $DIR/musicdb1[$FECHA].log
	fi
	else
		echo "El backup del día $FECHA no se ha podido llevar a cabo, por algún problema. Se
mantiene almacenado el backup anterior" >> $DIR/musicdb1[$FECHA].log
	fi
done
echo "Hora de finalización del backup: `date +%H:%M:%S`" >> $DIR/base_datos[$FECHA].log
