#!/bin/bash

# instalar programas especificos para compilar codigos-fonte
# Sem complicações ou Dores de cabeça
# Clicka ,Baixa ,compila ,instala
# Precissa ser Root Cuidado !!!




yad=$(which yad)

if [ $yad == "/usr/local/bin/yad" ] ;then

        Root=$(id -u)

    if [ $Root = "0" ] ;then

        instalador=$(yad --title "Qual sua Distro Linux?" --button "Debian":20 --button "Ubuntu/Linux mint":30 --button "Fedora":40 --button "Arch Linux":50 --width=300 --height=300 --center --image img/linux02.png --aling-center)

        case $? in
#------------------------------------------------[ Debian ]------------------------------------------------------------------------------------------------
        20)
        echo "debian"
            #apt update
            #apt upgrade -y
            #apt install g++ gcc build-essential intltool -y
            #wget -c https://site.com
            #make && make install
            # yad --text=" Download ok \n Compilação ok \n Concluido !!" --image minecraft --image-on-top --button "ok" --width=200 --height=50
            #!/bin/bash



admin=$(id -u)

if [ $admin == "0" ]; then


    clear
    yad=$(which yad)

    if [ $yad == "/usr/local/bin/yad" ]; then

        arquivo01=$(yad --title "Selecione o Arquivo tar.* " --file --button "OK":20 --button "Cancelar":30 --width=900 --height=600 --center)

        case $? in

        20)
        rm -rf /tmp/temporario
        mkdir /tmp/temporario
        tar -Jxf $arquivo01 -C /tmp/temporario/
        cd /tmp/temporario/* && ./configure #&& rm -rf /tmp/temporario

         yad --width=200 --height=100 --center --text "<big> <b>instalação concluida </b> </big> !!" --button "OK":0

        #yad --text="o arquivo foi extraido para a pasta /tmp"

        #arquivo02=$(yad --file) && cd /tmp/simao && cd $arquivo02 && ./configure
        ;;

        30)
        exit
        ;;
        esac
        clear


    else
    echo "Precissa ter yad-dialog instalado"
    fi


else
echo "Você não tem poderes de Root" & yad --text="Você não é ROOT"
fi



        ;;
#------------------------------------------------[ Ubuntu ]------------------------------------------------------------------------------------------------
        30)
        echo "ubuntu"
             #apt-get update
             #apt-get upgrade -y
             #apt-get install g++ gcc build-essential intltool -y
             #wget -c https://site.com
             #make && make install
            # yad --text=" Download ok \n Compilação ok \n Concluido !!" --image minecraft --image-on-top --button "ok" --width=200 --height=50
        #!/bin/bash



admin=$(id -u)

if [ $admin == "0" ]; then


    clear
    yad=$(which yad)

    if [ $yad == "/usr/local/bin/yad" ]; then

        arquivo01=$(yad --title "Selecione o Arquivo tar.* " --file --button "OK":20 --button "Cancelar":30 --width=900 --height=600 --center)

        case $? in

        20)
        rm -rf /tmp/temporario
        mkdir /tmp/temporario
        tar -Jxf $arquivo01 -C /tmp/temporario/
        cd /tmp/temporario/* && ./configure #&& rm -rf /tmp/temporario

        yad --width=200 --height=100 --center --text "<big> <b>instalação concluida </b> </big> !!" --button "OK":0

        #yad --text="o arquivo foi extraido para a pasta /tmp"

        #arquivo02=$(yad --file) && cd /tmp/simao && cd $arquivo02 && ./configure
        ;;

        30)
        exit
        ;;
        esac
        clear


    else
    echo "Precissa ter yad-dialog instalado"
    fi


else

echo "Você não tem poderes de Root"
fi




        ;;
        40)
#------------------------------------------------[ Fedora ]------------------------------------------------------------------------------------------------
        echo "Fedora"
        ;;
        50)
#------------------------------------------------[ Arch Linux ]------------------------------------------------------------------------------------------------
        echo "Arch Linux"
        ;;
        esac

    else
        echo "Você não é Root"

    fi




else
    echo "##################################"
    echo "você não tem yad-dialog instalado"
    echo "##################################"
fi





#script feito por S1m40 P.C N3t0 