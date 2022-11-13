#Noah Tanner
#Readme Generator
#October, 2022

#License texts

mittext='Licensed under the MIT License'

gnutext='Licensed under the GNU GPLv3 License'

#Where will the file be generated
read -n 1 -r -s -p $'Welcome to the ReadMeGen! This is the location where the README.md will be stored after completion. Press any key to continue... \n'

#create a README File
touch README.md

#Get name and date
read -p $'Whats your name (first and last) \n' name
read -p $'What is todays date (MM/DD/YYYY) \n' date

#Get Project Title
read -p $'What is the name of your project? \n' title

#Get project description
read -p $'Sounds like a fun project, please give me a short description of the project \n' description

#Credits [y/n]
while true; do
    read -p $'Is there anyone you would like to credit? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'Great! What is their name? \n' creditname; break;;
        [Nn]* ) echo Ok, solo dolo I see...; break;;
        * ) echo Please answer y or n;;
    esac
done

#define license function
chose_common_license () {
    while true; do
        read -p $'Choose one of the following licenses: [1] MIT,[2] GNU GPLv3 \n' chosenlicense
            case $chosenlicense in
                [1]* ) echo Great, your project will be licensed under the MIT License; break;;
                [2]* ) echo Great, your project will be licensed under the GNU GPLv3 License; break;;
                * ) echo Please answer 1 or 2;;
            esac
    done
}

#Installation 

read -n 1 -r -s -p $'Briefly describe how to install your program. If you need more space, open the file after finishing this and edit the installation section. Press any key to continue... \n' irrelevant1


#usage/License [y/n]
while true; do
    read -p $'For licenses, press L to see a basic list of options, or press any other key if you know what license you want to use \n' answer
    case $answer in 
        [Ll]* ) chose_common_license; break;;
        * ) read -p $'Which license would you like to use? \n' licensename; break;;
    esac
done

echo $'\n'
#Badges?
cat <<EOF
Badges are an important part of READMEs's, Unfortunately they are not yet supported by this project! 
Check out [https://shields.io/] for more info and instructions on how to include badges in your README.md 
EOF

#Features? [y/n]
while true; do
    read -p $'Has your project been featured anywhere? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'Go you! Where has it been featured? \n' featurename; break;;
        [Nn]* ) echo Ok; break;;
        * ) echo Please answer y or n;;
    esac
done

#How to contribute? [y/n]
while true; do
    read -p $'Allow contributions? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'How can people contribute? (Enter an email or phone etc.) \n' contribute; break;;
        [Nn]* ) echo Ok, solo dolo!... ; break;;
        * ) echo Please answer y or n;;
    esac
done

echo $'\n'

#Tests [y/n]
while true; do
    read -p $'Do you want to include tests for your program? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -n 1 -r -s -p $'If you want to write test cases for your program, open the README.md file after completion, and write them in. Press any key to continue... \n' irrelevant; break;;
        [Nn]* ) echo Ok, got it!... ; break;;
        * ) echo Please answer y or n;;
    esac
done


include_toc() {
    echo '## Table of Contents'
    echo $'\n'
    echo '[Installation](#installation)'> README.md
    echo '[Usage](#usage)'> README.md
    echo '[Credits](#credits)'> README.md
    echo '[License](#License)'> README.md
}

#Adding results to the README file
echo "# $title"> README.md
echo $'\n'

#description

echo $'\n'
echo  "$description" > README.md
#make a table of contents format thing

#Include a table of contents? [y/n], if yes, create table of contents based on the inclusion of the sections below
while true; do
    read -p $'If you think your README is going to be long, would you like to include a table of contents? [y/n] \n' yn
    case $yn in 
        [Yy]* ) echo Got it, we will include a table of contents; include_toc(); break;;
        [Nn]* ) echo Ok, no table of contents today!; break;;
        * ) echo Please answer y or n;;
    esac
done

