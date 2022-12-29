install_steam(){
    sudo add-apt-repository multiverse
    sudo apt dist-upgrade
    sudo apt update
    sudo apt -y install steam
}

install_mesa_drivers(){
    sudo add-apt-repository ppa:kisak/kisak-mesa
    sudo apt update
    sudo apt upgrade
    sudo apt -y install mesa-vulkan-drivers
}

install_vscode(){
    sudo apt update
    sudo apt -y install software-properties-common apt-transport-https wget 
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt -y install code
}

install_programing_languages_tools(){
    install_vscode
    sudo apt update
    sudo apt install -y python3-pip
}

install_stores(){
    sudo apt -y install discover gnome-software
}

install_winrar(){
    sudo apt -y install rar unrar thunar-archive-plugin
}

install_simplifiers(){
    sudo apt -y install update-manager synaptic
}

install_steam
install_unrar
install_mesa_drivers
install_programing_languages_tools
install_stores
install_simplifiers

echo "instalation complete"

