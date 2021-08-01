#!/bin/bash

ficheros=$(ls)

for fichero in ${ficheros[@]}
do
    if [ -d $fichero ] || [ -s $fichero ]
    then    
        echo "no tengo nada que hacer con el $fichero "
    else
        echo "eliminando fichero $fichero"
        rm -f $fichero
    fi
done
