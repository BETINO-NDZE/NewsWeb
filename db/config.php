<?php
$host = getenv('pg-c7780a6-bertrandndze15-9db2.j.aivencloud.com');
$port = getenv('27530');
$dbname = getenv('defaultdb');
$user = getenv('avnadmin');
$password = getenv('AVNS_a1viQEXxftPEXdLG04Q');

$connStr = "host=$host port=$port dbname=$dbname user=$user password=$password sslmode=require";
$conn = pg_connect($connStr);

if (!$conn) {
    die("Connection failed: " . pg_last_error());
}
echo "Connected to Aiven PostgreSQL successfully!";
