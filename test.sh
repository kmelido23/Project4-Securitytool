#!/bin/bash

# Function to display the description for each tool
display_description() {
    case $1 in
        "1")
            echo "Metasploit: A powerful penetration testing framework."
            ;;
        "2")
            echo "Snort: An open-source network intrusion detection system."
            ;;
        "3")
            echo "John the Ripper: A fast password cracker."
            ;;
        "4")
            echo "Nmap: A network exploration tool and security scanner."
            ;;
        *)
            echo "Invalid option."
            ;;

    esac                            
}

# Display a dialog box to choose the tool
CHOICE=$(dialog --clear \
                --backtitle "Choose Security Tool" \
                --title "Security Tools" \
                --menu "Choose one of the following security tools:" \
                15 50 4 \
                1 "Metasploit" \
                2 "Snort" \
                3 "John the Ripper" \
                4 "Nmap" \
                5 "View Builder Info" \
                2>&1 >/dev/tty)

# Display description for the chosen tool
display_description $CHOICE

# Based on the choice, install the selected tool
case $CHOICE in
    1)

        apt-get update && apt-get install -y metasploit-framework
        msfconsole
        ;;
    2)

        apt-get update && apt-get install -y snort
        snort -v
        ;;
    3)

        apt-get update && apt-get install -y john
        john
        ;;
    4) 

        apt-get update && apt-get install -y nmap
        nmap --version
        ;;
    
esac 