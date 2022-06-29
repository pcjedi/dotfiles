if [[ $(awk -F= '/^ID/{print $2}' /etc/os-release) == "alpine" ]]; then
    apk add openconnect
fi

if [[ $(awk -F= '/^ID/{print $2}' /etc/os-release) == "debian" ]]; then
    apt-get update
    apt-get -y install openconnect
fi
