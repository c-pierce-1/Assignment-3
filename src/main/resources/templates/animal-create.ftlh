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
            <a href="index.html" button class="btn btn-outline-success me-2" type="button">Home</a>
        </form>
    </nav>
    <div class="container my-5">
        <div class="mb-3 col-md-4">
            <label for="exampleFormControlInput1" class="form-label">Animal name:</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Your animal's name...">
        </div>
        <div class="mb-3 col-md-5">
            <label for="exampleFormControlTextarea1" class="form-label">Description:</label>
            <textarea class="form-control" id="exampleFormControlTextarea1"
                placeholder="Tell us more about this animal..." rows="5"></textarea>
        </div>
        <div class="mb-3 col-md-7">
            <label for="exampleFormControlInput1" class="form-label">Image URL:</label>
            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="Paste URL">
            <div class="d-grid mt-3"></div>
            <a href="index.html" button class="btn btn-outline-primary me-2" type="button">Add animal</a>
        </div>

    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>

</html>