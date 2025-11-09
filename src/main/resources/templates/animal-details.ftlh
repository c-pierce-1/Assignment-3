<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>

<body class="bg-dark text-white">

    <nav class="navbar bg-dark">
        <form class="container-fluid justify-content-start">
            <div class="container-fluid" style="font-size:large;">The Cute Animals Gallery</div>
            <a href="/animals" button class="btn btn-outline-success me-2" type="button">Home</a>
        </form>
    </nav>


    <div class="container text-center">
        <div class="card" style="width: 90rem; height: rem;">
            <img src="/src/main/resources/static/Images/orangeCat.jpg" class="card-img-top" alt="${animal.name} image">
            <div class="card-body">
                <h5 class="card-title">${animal.name}</h5>
                <p class="card-text">${animal.description}</p>
                <h6 class="card-subtitle mb-2 text-body-secondary">Type: ${animal.animalType}</h6>
                <p class="card-text">Age: ${animal.age}</p>
                <a href="/animals" class="btn btn-primary">Go Home</a>
                <a href="/animals/delete/${animal.animalId}" class="btn btn-danger">Delete</a>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>

</html>