#Noah Tanner
#Readme Generator
#October, 2022

#License texts

mittext='Licensed under the MIT License'

gnutext='Licensed under the GNU GPLv3 License'

#Where will the file be generated
read -n 1 -r -s -p $'Welcome to the ReadMeGen! This is the location where the README.md will be stored after completion. Press any key to continue... \n'

echo $'\n'
#create a README File
touch README.md

#Get name and date
read -p $'Whats your name (first and last) \n' name
echo $'\n'
read -p $'What is todays date (MM/DD/YYYY) \n' date
echo $'\n'

#Get Project Title
read -p $'What is the name of your project? \n' title
echo $'\n'

#Get project description
read -p $'Sounds like a fun project, please give me a short description of the project \n' description
echo $'\n'

#Credits [y/n]
while true; do
    read -p $'Is there anyone you would like to credit? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'Great! What is their name? (If multiple, please separate with commas) \n' creditname; break;;
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
echo $'\n'

#Installation 
read -p $'Briefly describe how to install your program. If you need more space, open the README file after finishing this and edit the installation section.\n' installation


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
badges=$(cat <<EOF
Badges are an important part of READMEs's, Unfortunately they are not yet supported by this project. 
Check out [https://shields.io/] for more info and instructions on how to include badges in your README.md 
EOF
)

#Features? [y/n]
while true; do
    read -p $'Has your project been featured anywhere? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'Go you! Where has it been featured? \n' featurename; break;;
        [Nn]* ) echo Ok; break;;
        * ) echo Please answer y or n;;
    esac
done
echo $'\n'

#How to contribute? [y/n]
while true; do
    read -p $'Allow contributions? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -p $'How can people contribute? (Enter an email or phone etc.) \n' contribute; break;;
        [Nn]* ) echo 'Ok, solo dolo!'... ; break;;
        * ) echo Please answer y or n;;
    esac
done
echo $'\n'

#Tests [y/n]
while true; do
    read -p $'Do you want to include tests for your program? [y/n] \n' yn
    case $yn in
        [Yy]* ) read -n 1 -r -s -p $'If you want to write test cases for your program, open the README.md file after completion, and write them in. Press any key to continue... \n' irrelevant; break;;
        [Nn]* ) echo Ok, got it....; break;;
        * ) echo Please answer y or n;;
    esac
done
echo $'\n'

include_toc () {
    echo '## Table of Contents'>> README.md
    echo '- [Installation](#installation)'>> README.md
    echo '- [Usage](#usage)'>> README.md
    echo '- [Credits](#credits)'>> README.md
    echo '- [License](#License)'>> README.md
    echo $'\n'>> README.md
}

#Adding results to the README file
echo "# $name">> README.md
echo "# $date">> README.md
echo $'\n'>> README.md
echo "# $title">> README.md
echo $'\n'>> README.md
echo "## Description">> README.md
echo "$description">> README.md
echo $'\n'>> README.md

#Include a table of contents? [y/n], if yes, create table of contents based on the inclusion of the sections below
while true; do
    read -p $'If you think your README is going to be long, would you like to include a table of contents? [y/n] \n' yn
    case $yn in 
        [Yy]* ) echo Got it, we will include a table of contents; include_toc; break;;
        [Nn]* ) echo Ok, no table of contents today.; break;;
        * ) echo Please answer y or n;;
    esac
done

read -n 1 -r -s -p $'Thanks for your responses, the program will now write your responses to the README file. Press any key to continue... \n'

#installation, usage, credits, badges, features, how to contribute, tests
#echo $'\n'>> README.md
echo "## Installation">> README.md
echo "$installation">> README.md
echo $'\n'>> README.md
echo "## Credits">> README.md
echo "$creditname">> README.md
echo $'\n'>> README.md
echo "## Badges">> README.md
echo "$badges">> README.md
echo $'\n'>> README.md
echo "## Features">> README.md
echo "$featurename">> README.md
echo $'\n'>> README.md
echo "## How to contribute">> README.md
echo "$contribute">> README.md
echo $'\n'>> README.md
echo "## Tests">> README.md
echo "[INSERT TEST CASES HERE}">> README.md

read -n 1 -r -s -p $'This is the end of the README generator. Your file is stored at the location where main.sh is. Happy coding. Press any key to continue... \n'