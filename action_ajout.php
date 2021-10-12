<?php
require_once "database.php";

if(isset($_POST['send'])){
    if(!empty($_POST['nom_complet']) && !empty($_POST['nom_image']) && !empty($_POST['historique'])){
        extract($_POST);
        $sql = $db->prepare("INSERT INTO personnages (nom_complet, nom_image, historique) VALUES (?,?,?)");
        $sql->execute([
            $nom_complet,
            $nom_image,
            $historique
        ]);
        header("Location:index.php");
    }
}
?>