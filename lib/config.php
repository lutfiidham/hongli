<?php

ob_start();

session_start();

$con = mysql_connect("localhost","jasaprog_hongli","&4Tg1KRcuH5U");

//mysql_select_db("warung_app", $con);

//$con = mysql_connect("localhost","ab3127_r35t0","x}.;1O9X.=xw");

mysql_select_db("jasaprog_hongli", $con);

unset($_SESSION['menu_active']);

?>