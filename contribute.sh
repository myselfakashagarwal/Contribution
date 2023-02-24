#!/bin/bash
echo ""

 read -p "Input the year, if you provide non legitimate year it will not show contributions be carefull:" year
 read -p "Input the file you wanna make fake contributions in ~  example of input ~ contribute.txt :" fileToContributeIn
 read -p "Input the commit message for each commit :" commitMessage
 read -p "Input the commit data aka the data that would be added to $fileToContributeIn  as contribution :" dataToContribute


if [[ $year -gt 2024 || $year -lt 1969 ]]
then
bash script
fi
if ((year % 4 == 0 ))
then
febcofficient=29
else
febcofficient=28
fi
for ((month = 1 ; month <= 12 ; month++ ))
do

 if ((month == 1))
 then
  nod=31
 elif ((month == 2)) 
 then 
  nod=$febcofficient
 elif ((month == 3))
 then
  nod=31
 elif ((month == 4))
 then
  nod=30
 elif ((month == 5))
 then
  nod=31
 elif ((month == 6))
 then
  nod=30
 elif ((month == 7))
 then
  nod=31
 elif ((month == 8))
 then
  nod=31
 elif ((month == 9))
 then
  nod=30
 elif ((month == 10))
 then
  nod=31
 elif ((month == 11))
 then
  nod=30
 else
  nod=31
 fi

       for ((date = 1 ; date <= $nod ; date++ ))
       do
       echo $dataToContribute  >> $fileToContributeIn
       git add .
       git commit --date=$year-$month-$date -m $commitMessage
       done
done

