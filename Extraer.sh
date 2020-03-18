#!/bin/bash

# ######################################
#																		#
#					ExtractAll.deb								#
#																		#
#				 Creado por Daniel Serrano				#
#																		#
#				 dani.eus79@gmail.com					#
#																		#
#				 https://github.com/danitxu79			#
#																		#
#	Extrae todo tipo de archivos comprimidos  	#
#	desde el menú contextual con muchas 		#
#	opciones nuevas.											#
#																		#
# ######################################

identifica()	{
	
	case  $variable2 in 

			"zip")
				unzip  $variable1 -x
				;;
			"rar")
				unrar e  $variable1
				;;
			"7z")
				7z e  $variable1
				;;
	esac
}


variable1="$1"
# echo $variable1
variable2="${variable1##*.}"
# echo $variable2
identifica