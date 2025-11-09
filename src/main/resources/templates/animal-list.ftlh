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
            <a href="/animals/10" button class="btn btn-outline-success me-2" type="button">Featured</a>
        </form>
    </nav>

    <div class="container-fluid" style="width: 900px; font-size: 50px;">
        Welcome to the Cute Animals Gallery
    </div>
    <div class="container-fluid" style="width: 900px; font-size: 20px;">
        CAG, the best website for finding pictures of pets and wild animals!
    </div>
    <div class="p-4 mb-2 bg-transparent text-body"></div>

    <nav class="navbar bg-transparent">
        <div class="container-fluid justify-content-center">
            <form class="d-flex" role="search">
                <input id="searchInput" class="form-control me-2" type="search" placeholder="Search by name or details"
                    aria-label="Search" />
                <a href="/animals/new" class="btn btn-primary">Add new animal</a>
            </form>
        </div>
    </nav>

    <div class="container text-center">
        <div class="row g-4">
            <#list animalList as animal>
                <div class="col-md-4 animal-card">
                    <div class="card h-100" style="width: 20rem; height: 20rem;">
                        <img src="/src/main/resources/static/Images/orangeCat.jpg" class="card-img-top"
                            alt="${animal.name}">
                        <div class="card-body">
                            <h5 class="card-title text-start">${animal.name}</h5>
                            <p class="card-text text-start">${animal.description}</p>
                            <a href="/animals/${animal.animalId}" class="btn btn-primary">Learn more</a>
                            <a href="/animals/update/${animal.animalId}" class="btn btn-warning">Update</a>
                            <a href="/animals/delete/${animal.animalId}" class="btn btn-danger">Delete</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>



    <script>
        const searchInput = document.getElementById('searchInput');
        const cards = document.querySelectorAll('.animal-card');

        searchInput.addEventListener('input', function () {
            const filter = searchInput.value.toLowerCase();

            cards.forEach(card => {
                const title = card.querySelector('.card-title').textContent.toLowerCase();
                const text = card.querySelector('.card-text').textContent.toLowerCase();

                if (title.includes(filter) || text.includes(filter)) {
                    card.style.display = '';
                } else {
                    card.style.display = 'none';
                }
            });
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
</body>

</html>