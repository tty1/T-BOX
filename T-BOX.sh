#!/bin/bash


datum=`date +%d.%m.%y`
uhrzeit=`date +%H:%M`
dateiname=$1
befehl=$2

#echo -e "\033[0;37;41mDateiname\033[1;35;44m$dateiname\033[m" >> test.txt



#do
#    case $OPTION in
#        d)  DELIMITER=$OPTARG ;;
#        f)  INFILE=$OPTARG ;;
#    esac
#done

#Less than 2 command line argument, throw Usage
#[ "$#" -lt 2 ] && f_Usage && exit $NOARG

#DEFAULTDELIMITER=","
#If no delimiter is supplied, default delimiter is comma i.e. ,
#SEPARATOR=${DELIMITER:-$DEFAULTDELIMITER}
printf "Tooltable:$dateiname\terstellt am:$datum\tum: $uhrzeit" >test.txt
printf "\n" >>test.txt
#printf "\n" >>test.txt
printf ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ >>test.txt
printf "\n" >>test.txt
printf "\n" >>test.txt

while read line
do
tool=$(echo "$line" | sed "s/;.*//g") #delete the COMMENT
#tool=$(echo "$line" | sed "s/\P.*//g") #nur werkzeugnummer
#sleep 0.3
  toolsplitt=$(echo $tool | sed "s/ /\n/g") #in einzelne zeilen zerlegen
VarT=$(echo "$toolsplitt" | grep T)
VarP=$(echo "$toolsplitt" | grep P)
VarX=$(echo "$toolsplitt" | grep X)
VarY=$(echo "$toolsplitt" | grep Y)
VarZ=$(echo "$toolsplitt" | grep Z)



printf "| $VarT\t\t| $VarP\t\t| $VarX\t\t| $VarY\t\t| $VarZ\t\t|" >> test.txt
#sleep 0.1
printf "\n|~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~|~~~~~~~~~~~~~~~|\n" >> test.txt
#sleep 0.1

done < $dateiname
echo "Tootable exoport finish"

























if [ -f "${dateikkkkkkkkkkname}" ]
        then
          #sed "s/;/\n/g" $dateiname | sed "s/ /\t/g" | sed "s/;/\n/g" |  while read line
                        #do



          sed "s/;.*//g" $dateiname | while read tool #sed "s/ /\t/g" | sed "s/;/\n/g" |  while read line
                        do

                        echo $tool
                        echo $kommentar
                                printf "${line}\n\n"
                done
                echo
                echo fertig

        fi
