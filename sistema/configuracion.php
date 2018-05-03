<?php if (!isset($_SESSION)) session_start();

/*
 |-------------------------------------------
 |	CONFIGURACION BASE DE DATOS
 |-------------------------------------------
 */
define('HOST',		'localhost');
define('USER',		'roota');
define('PASSWORD',	'admin');
define('PORT',		'3306');
define('DB',		'inventario-db');

/*
 |-------------------------------------------
 |	CONFIGURACION IDIOMA
 |-------------------------------------------
 */
define('LANGUAGE',	'es');

/*
 |-------------------------------------------
 |	Datos de la Aplicación
 |-------------------------------------------
 */
define('TITULO',	'Carulla');

/*
 |-------------------------------------------
 |	CONFIGURACION DIRECCIONES
 |-------------------------------------------
 */

 //Dejar vacía la siguiente constante siempre!!!!
define('URLBASE', '');

/*
 |--------------------------------------------
 | CARGA NUCLEO DE LA APLICACION
 |--------------------------------------------
 */

  require_once ('Qualtiva.php');
