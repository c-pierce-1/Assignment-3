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

    <form action="/animals/update" method="POST" class="container my-5">

        <input type="hidden" name="animalId" value="${animal.animalId}">

        <div class="mb-3 col-md-4">
            <label for="name" class="form-label">Animal name:</label>
            <input type="text" class="form-control" id="name" name="name" value="${animal.name}">
        </div>

        <div class="mb-3 col-md-5">
            <label for="description" class="form-label">Description:</label>
            <textarea class="form-control" id="description" name="description" rows="5">${animal.description}</textarea>
        </div>

        <div class="mb-3 col-md-4">
            <label for="animalType" class="form-label">Animal Type:</label>
            <input type="text" class="form-control" id="animalType" name="animalType" value="${animal.animalType}">
        </div>

        <div class="mb-3 col-md-2">
            <label for="age" class="form-label">Age:</label>
            <input type="number" step="0.1" class="form-control" id="age" name="age" value="${animal.age}">
        </div>

        <div class="mb-3 col-md-5">
            <label for="imageUrl" class="form-label">Image URL:</label>
            <input type="text" class="form-control" id="imageUrl" name="imageUrl" value="${animal.imageUrl}">
        </div>

        <div class="d-grid mt-3">
            <button type="submit" class="btn btn-outline-warning">Save Changes</button>
        </div>

    </form>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>

</html>