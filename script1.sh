#!/bin/bash

 #This a Bashscript to check if a python3 packaage is available on a machine. if not available, it will automatically install the python package and ask the user if they want to run it.

file=python

if [ -f ~/$file ]

then

        echo "$file is already installed"

else

        echo "$file is not available!"
        echo "installing $file..."
        echo "Dont quit the command line"

        sudo apt update && sudo apt install python3 -y

        echo "$file succesfully installed"
fi

        read -p "Do you want to run $file now? (yes/no):" answer

        if [[ "answer" == "yes" ]]
then
        $file
else
        echo "perform other tasks!"

fi

