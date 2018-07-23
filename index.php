<?php
require_once 'config.php';
spl_autoload_register(function($class)
{ 
	require_once "libs/$class.php";
});

$app = new Bootstrap;
