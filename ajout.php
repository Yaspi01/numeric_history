<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
    <h1>Inserer un personnage numérique</h1>
    <form action="action_ajout" method="post">
        <div class="container">
        <div class="col-md-6">
            <div class="form-group">
            <label class="form-label" for="nom_complet">Nom complet</label>
                <input class="form-control" placeholder="Nom complet" type="text" name="nom_complet" id="">
            </div>
            <div class="form-label">
                <label  class="form-label"for="nom_image">Image</label>
                <input class="form-control" type="file" name="nom_image" id="">
            </div>
            <div class="form-group">
                <label class="form-label" for="historique">Historique</label>
                <input class="form-control" type="text" placeholder="Historique" name="historique" id="">
            </div>
            <input type="submit" value="Envoyer" class="btn btn-primary" name="send">
        </div>
        </div>
    </form>
</body>
</html>