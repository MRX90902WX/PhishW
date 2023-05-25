# PhishW
Un simple phishing para obtener la contraseña wifi de alguien mandando un link mediante tunel al puerto abierto que se abrira con bash wifi.sh .

#USO PARA TERMUX Y KALI

TENER NGROK INSTALADO

#TERMUX :

Clonar el repositorio

- git clone https://github.com/MRX90902WX/PhishW

- cd PhishW

- pkg install figlet

- pkg install openssh

- pkg install dropbear 

- pkg install cloudflared

- bash wifi.sh

[+] Una ves ejecutado el script le va a pedir el nombre
de la red a la que quieren saber la contraseña wifi
luego escriben un puerto , y le abrirá un menú escojen
La opción 1 y listo ya tienen el localhost
corriendo a ese puerto , la opción a le generara un link ssh enviar a la victima,
La opción b le abrirá ngrok http y se le generara link enviar a la victima y la opción d generara un túnel mediante cloudflared.
Recuerden utilizar
Ingeniería Social con la victima adiós!!.
 
*****
#KALI LINUX:

- sudo apt-get install update

- sudo apt-get install figlet

- sudo apt-get install openssh

- sudo apt-get install dropbear

- sudo apt-get install cloudflared

- git clone https://github.com/MRX90902WX/PhishW

- cd PhishW 

- bash wifi.sh

*****

By code: MRX-HACKS



