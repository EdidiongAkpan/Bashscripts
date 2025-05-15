#!/bin/bash

#This a BashScript that will prompt a user to input a file name created and it will display what the file type is based on the extension the user named the file while creating.

read -p "Enter the filename:" filename


extension="${filename##*.}"

extension="${extension,,}" #enable lowercase sensitivity on the extensions.

case $extension in

        js)
                echo "This is a javascript file";;
        py)

                echo "This is a python file";;
        html)

                echo "This is a html file";;
        sh)

                echo "This is a Bash script";;

        bin)
                echo "This is a binary file";;

        zip)
                echo "this is a zip archived file";;

        doc)
               echo "This is a microsoft word document";;

        pdf)

               echo "This a portable document file";;

        mp4)
               echo "This is a text file";;


        *)     echo "The file extension name is not available at the moment, We are working on to add more."

esac

