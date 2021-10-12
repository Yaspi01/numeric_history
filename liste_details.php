<?php
    require_once "database.php";

    $id = $_GET["id"];

    $sql = $db->prepare("SELECT * FROM personnages WHERE id = :id");
    $sql->execute([':id' => $id]);
    $data = $sql->fetch(PDO::FETCH_OBJ);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h1><?php echo $data->nom_complet ?></h1>
    <div class="container">
        <table>
            <tbody>
                <td>
                    <img class="img_detail" src="images/<?php echo $data->nom_image ?>" alt="<?php echo $data->$nom_image ?>">
                    <br>
                    <div class="historique"><?php echo $data->historique ?></div>
                </td>
            </tbody>
        </table>
    </div>
</body>
</html>