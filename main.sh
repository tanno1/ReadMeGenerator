#Noah Tanner
#Readme Generator
#October, 2022

#Where will the file be generated
read -n 1 -r -s -p $'Welcome to the ReadMeGen! This is the location where the README.md will be stored after completion. Press any key to continue... \n'

touch README.md

#Get Project Title
read -p $'What is the name of your project? \n' title

#Get project description
read -p $'Sounds like a fun project, please give me a short description of the project \n' description

#Include a table of contents? [y/n], if yes, create table of contents based on the inclusion of the sections below
while true; do
    read -p $'Would you like to include a table of contents? [y/n] \n' yn
    case $yn in 
        [Yy]* ) echo Got it, we will include a table of contents; break;;
        [Nn]* ) echo Ok, no table of contents today!; break;;
        * ) echo Please answer y or n;;
    esac
done

#Credits [y/n]
while true; do
    read -p $'Is there anyone you would like to credit? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'Great! What is their name? \n' creditname; break;;
        [Nn]* ) echo Ok, solo dolo I see...; break;;
        * ) echo Please answer y or n;;
    esac
done

#usage/License [y/n]
while true; do
    read -p $'For licenses, press L to see a basic list of options, or press any other key if you know what license you want to use \n' answer
    case $answer in 
        [Ll]* ) 
        * ) read -p $'Which license would you like to use? \n' licensename; break;;
    esac

#Badges? [y/n]

#Features? [y/n]

#How to contribute? [y/n]

#Tests [y/n]
