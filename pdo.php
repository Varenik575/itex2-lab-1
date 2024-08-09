<?php
$db_driver = "mysql";
$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'lb_pdo_films';
$options = array(PDO::ATTR_PERSISTENT => true, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');
$dsn = "$db_driver:host=$host; dbname=$dbname";

$pdo = new PDO($dsn, $user, $password, $options);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
