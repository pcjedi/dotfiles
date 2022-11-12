# Alpine
if command -v apk &> /dev/null; then
    if ! command -v openconnect &> /dev/null; then
        sudo apk add openconnect
    fi
fi

#Debian/Ubuntu
if command -v apt-get &> /dev/null; then
    if ! command -v openconnect &> /dev/null; then
        sudo apt-get update
        sudo apt-get -y upgrade
        sudo apt-get -y install openconnect --no-install-recommends
        sudo rm -rf /var/lib/apt/lists/*
    fi
    if ! [ -d "/opt/oracle" ]; then
        sudo apt-get update
        sudo apt-get -y upgrade
        sudo apt-get -y install libaio1 wget unzip --no-install-recommends
        sudo mkdir -p /opt/oracle
        sudo wget --directory-prefix=/tmp/ https://download.oracle.com/otn_software/linux/instantclient/instantclient-basiclite-linuxx64.zip
        sudo unzip /tmp/instantclient-basiclite-linuxx64.zip -d /opt/oracle/
        sudo ln -s /opt/oracle/* /opt/oracle/instantclient
        sudo rm -rf /var/lib/apt/lists/* /tmp/*
    fi
fi
