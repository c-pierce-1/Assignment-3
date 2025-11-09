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
            <div class = "container-fluid" style = "font-size:large;">The Cute Animals Gallery</div>
            <a href="index.html" button class="btn btn-outline-success me-2" type="button">Home</a>
            <a href="details.html" button class="btn btn-outline-success me-2" type="button">Featured</a>
            <a href="about.html" button class="btn btn-sm btn-outline-secondary" type="button">About Us</a>
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
                <a href="new-animal-form.html" class="btn btn-primary">Add new animal</a>
            </form>
        </div>
    </nav>

    <div class="container text-center">
        <div class="row g-4">
            <div class="col-md-4 animal-card">
                <div class="card h-100" style="width: 20rem; height: 20rem;">
                    <img src="images/greyCat.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-start">Pearl</h5>
                        <p class="card-text text-start">Energetic 7 month old kitten</p>
                        <a href="details.html" class="btn btn-primary">Learn more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 animal-card">
                <div class="card h-100" style="width: 20rem; height: 20rem;">
                    <img src="images/orangeCat.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-start">Butter Ball</h5>
                        <p class="card-text text-start">Innocent looking chaotic orange cat</p>
                        <a href="details.html" class="btn btn-primary">Learn more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 animal-card">
                <div class="card h-100" style="width: 20rem; height: 20rem;">
                    <img src="images/nemo.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-start">Pipey</h5>
                        <p class="card-text text-start">The most serious clown(fish) you've ever met</p>
                        <a href="details.html" class="btn btn-primary">Learn more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 animal-card">
                <div class="card h-100" style="width: 20rem; height: 20rem;">
                    <img src="images/kingFisher.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-start">Tealjuana</h5>
                        <p class="card-text text-start">Beautiful common Kingfisher</p>
                        <a href="details.html" class="btn btn-primary">Learn more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 animal-card">
                <div class="card h-100" style="width: 20rem; height: 20rem;">
                    <img src="images/parrot.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-start">Twitter</h5>
                        <p class="card-text text-start">Orange chinned Parakeet</p>
                        <a href="details.html" class="btn btn-primary">Learn more</a>
                    </div>
                </div>
            </div>

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