if [[ $(awk -F= '/^ID/{print $2}' /etc/os-release) == "alpine" ]]; then
    sudo apk add openconnect
fi

if [[ $(awk -F= '/^ID/{print $2}' /etc/os-release) == "debian" ]]; then
    sudo apt-get update
    sudo apt-get -y install openconnect
fi
