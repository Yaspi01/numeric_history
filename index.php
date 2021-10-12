<?php
    require_once "database.php";
    $sql = $db->query("SELECT * FROM personnages");
    $data = $sql->fetchAll(PDO::FETCH_OBJ);
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Personnages_numeriques</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Italianno">
</head>
<body>
<h1>Liste des personnages numeriques</h1>
  <div class="container">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/Linus_Torvaldss.jpg" alt="Linus_Torvalds.jpg">
            </div>
            <div class="carousel-item">
                <img src="images/steve-jobss.jpg" alt="steve-jobs.jpg">
            </div>
            <div class="carousel-item">
                <img src="images/billgates.jpg" alt="billgate.jpg">
            </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <!-- <span class="carousel-control-prev-icon" aria-hidden="true"></span> -->
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <!-- <span class="carousel-control-next-icon" aria-hidden="true"></span> -->
                <span class="visually-hidden">Next</span>
            </button>
        </div>
  </div><br><br>
  <div class="container">
    <div class="row row-cols-1 row-cols-md-3 g-4">
      <?php foreach ($data as $datas): ?>
        <div class="col mb-5 bg-white rounded">
          <div class="card h-80 shadow p-3">
          <a href="liste_details.php?id=<?=$datas->id?>"><img class="img" src="images/<?=$datas->nom_image?>" alt="<?=$datas->nom_image?>"></a>
            <div class="card-body">
              <h5 class="card-title"><?=$datas->nom_complet?></h5>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
        var myCarousel = document.querySelector('#myCarousel')
        var carousel = new bootstrap.Carousel(myCarousel)
    </script>
</body>
</html>