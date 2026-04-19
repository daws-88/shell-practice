#!/bin/bash
# want to print numbers 1-10
x=1 # we are intalizing
while [ $x -le 10 ]
do
    echo "$x"
    sleep 2 
    x=$((x+1))
done  


# #!/bin/bash
# # whie loop is used to read file

# R="\e[31m"
# while IFS= read -r filepath || [ -n "$filepath" ]
# do
#   echo -e " $R city: $filepatg $N"
# done < name .sh 

