#Noah Tanner
#Readme Generator
#October, 2022

#Where will the file be generated
read -n 1 -r -s -p $'Welcome to the ReadMeGen! This is the location where the README.md will be stored after completion. Press any key to continue... \n'

touch README.md

#Get Project Title
echo What is the name of your project?
read title


#Get project description
echo Sounds like a fun project, please give me a short description of the project
read description

#Include a table of contents? [y/n], if yes, create table of contents based on the inclusion of the sections below
while true; do
    read -p 'Would you like to include a table of contents? [y/n] ' yn
    case $yn in 
        [Yy]* ) echo Got it, we will include a table of contents; exit;;
        [Nn]* ) echo Ok, no table of contents today!; exit;;
        * ) echo Please answer y or n;;
    esac
done

#Credits [y/n]
while true; do
    read -p 'Is there anyone you would like to credit? [y/n] ' yn
    case $yn in
        [Yy]* ) read -p 'Great! What is their name? ' creditname; exit;;
        [Nn]* ) echo Ok, solo dolo I see...; exit;;

#usage/License [y/n]

#Badges? [y/n]

#Features? [y/n]

#How to contribute? [y/n]

#Tests [y/n]
