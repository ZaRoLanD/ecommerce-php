<?php
// Error Reporting Turn On
ini_set('error_reporting', E_ALL);

// Setting up the time zone
date_default_timezone_set('America/Los_Angeles');

// Host Name
$dbhost = 'localhost';

// Database Name
$dbname = 'ecommerceweb';

// Database Username
$dbuser = 'root';

// Database Password
$dbpass = '';

// Defining base url
define("BASE_URL", "");

// Getting Admin url
define("ADMIN_URL", BASE_URL . "admin" . "/");

// Security helpers (password hashing, session hardening, HTML escaping)
require_once(__DIR__ . '/security.php');

// Rating helpers (anti N+1 + rendu étoiles mutualisé)
require_once(__DIR__ . '/rating_helpers.php');

try {
	$pdo = new PDO("mysql:host={$dbhost};dbname={$dbname};charset=utf8mb4", $dbuser, $dbpass);
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch( PDOException $exception ) {
	echo "Connection error :" . $exception->getMessage();
}
