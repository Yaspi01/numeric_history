<?php
  try{
    
    $db=new PDO("mysql:host=localhost;dbname=numeric_history","root","");
    $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
    $db->exec('SET NAMES utf8');

  }catch(Exception $e){
      die($e->getMessage());
  }

?>