<!DOCTYPE html>
<?php include('server.php'); ?>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Exo&display=swap" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/8fbbc6c88f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="CSS/style.css" />
</head>
<header class="container-fluid">
  <div class="row">
    <figure class="col">
      <img class="logo-image" src="images/logo.png" alt="LOGO" />
    </figure>
  </div>
</header>
<main>
  <section class="container my-3">
    <div>
      <h2>Naujausi kursai</h2>
    </div>
    <div class="row">
      <?php foreach ($corsArray as $cors) { ?>
        <article class="col-lg-4 col-md-6 col-12 my-2">
          <div class="card" style="width: 18rem">
            <img src="<?php echo $cors->image; ?>" class="card-img-top" alt="PHP" />
            <div class="card-body">
              <h5 class="card-title"><?php echo $cors->title; ?></h5>
              <h6>Autorius</h6>
              <hr />
              <p class="card-text"><?php echo $cors->smallDescription; ?></p>
              <hr />
              <div class="d-flex justify-content-between">
                <div>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                <i class="fa fa-comment" aria-hidden="true"><?php echo $cors->commetsNumber; ?></i>
              </div>
            </div>
          </div>
        </article>
      <?php } ?>

    </div>
  </section>
  <section class="container my-3">
    <div class="row">
      <h2>Sekite naujienas</h2>
      <p>
        Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų
        naujienlaiškį!
      </p>
      <div class="message"></div>
    </div>
    <div class="row">
      <form method="POST" action="" class="col-lg-6 col" id="uzsakymoForma">
        <div class="mb-3">
          <label for="name" class="form-label">Vardas</label>
          <input type="text" class="form-control" id="name" name="name" />
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">El. paštas</label>
          <input type="email" class="form-control" id="email" name="email" />
        </div>
        <input type="submit" class="btn btn-primary get-pre" value="Užsakyti" />
      </form>
    </div>
  </section>
</main>

<footer class="container">
  <hr />
  <div class="row">
    <p>&#169; 2021 Marius Šerys</p>
  </div>
</footer>

<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  <script src="scripts/script.js"></script>
</body>

</html>