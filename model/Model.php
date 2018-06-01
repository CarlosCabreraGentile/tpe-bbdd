<?php
define('DB_NAME', 'db_tarjetas');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_HOSTNAME', 'localhost');
define('DB_FILE','SQL/db_tarjetas.sql');


  class Model
  {
   protected $db;
   protected $host = "dbases.exa.unicen.edu.ar";

   function __construct()
   {
     try {
         $this->db = new PDO("pgsql:host=localhost;port=5432; dbname=departamentos", 'postgres', 'admin');
         $this->db->exec('SET search_path TO public');
     }
     catch (PDOException $e){
       echo "ERROR: Trying to connect to the Database";
       die();
     }
   }
  }

?>