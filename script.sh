#! /usr/bin/bash

#Read person names from input file
#while IFS= read -r name; do
     #create driectory with person
 #    mkdir -p "/opt/$name"
     #create text file in the directory
  #   touch "/opt/$name/sample"
     #get unique number
   #  unique_number=$(date +%s%N)
     #get timestamp
    # timestamp=$(date +"%Y-%m-%d %H:%M:%S")
     #write deatils to the text file
     #echo "$unique_number,$name,$timestamp" > "/opt$name/sample"

#done < "person_names"
#
#
#
while IFS= read -r name; do
    
    dir_path="/opt/emfile/$name"

    
    sudo mkdir -p "$dir_path"

    
    sudo touch "$dir_path/tempfile"

    
    unique_number=$(date +%s%N)

    
    timestamp=$(date +"%Y-%m-%d %H:%M:%S")

   
   echo "$unique_number,$name,$timestamp" | sudo tee "$dir_path/tempfile" > /home/linux/myfile

done < "p_names"



