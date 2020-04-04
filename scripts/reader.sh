#!/bin/bash
# Purpose: Read Comma Separated CSV File
# Author: Francisco Maria Calisto
# ------------------------------------------
cd dataset
INPUT=overview.csv
OLDIFS=$IFS
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 100; }
while read Age Contrast ContrastTag raw_input_path id tiff_name dicom_name
do
	echo "Age : $Age"
	echo "Contrast : $Contrast"
	echo "ContrastTag : $ContrastTag"
	echo "raw_input_path : $raw_input_path"
	echo "id : $id"
	echo "tiff_name : $tiff_name"
	echo "dicom_name : $dicom_name"
done < $INPUT
IFS=$OLDIFS
