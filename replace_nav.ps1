$directory = "f:\Smartfusion\October\Oral_Hygiene"
$files = Get-ChildItem -Path $directory -Filter *.html

$newHeader = @"
    <!-- Premium Header / Navigation -->
    <header class="header-premium sticky-top">
        <nav class="navbar navbar-expand-xl py-3">
            <div class="container">
                <a class="navbar-brand d-flex align-items-center gap-3 fs-4 fw-bold premium-brand" href="index.html">
                    <img src="assets/images/logo11.png" alt="Premium Oral Care Logo" width="40" height="40"
                        class="rounded-circle brand-logo-glow">
                    <span>Premium Oral Care</span>
                </a>
                <button class="navbar-toggler custom-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mainNav">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0 nav-links-premium">
                        <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="services.html">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="solutions.html">Treatments</a></li>
                        <li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Book</a></li>
                    </ul>
                    <div class="d-flex gap-3 align-items-center action-buttons-premium">
                        <button class="btn theme-toggle-btn d-flex align-items-center justify-content-center"
                            onclick="let themeTarget = document.documentElement.getAttribute('data-bs-theme') === 'dark' ? 'light' : 'dark'; document.documentElement.setAttribute('data-bs-theme', themeTarget); localStorage.setItem('theme', themeTarget);"
                            title="Toggle Theme">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor"
                                class="bi bi-moon-stars-fill" viewBox="0 0 16 16">
                                <path
                                    d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z" />
                                <path
                                    d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z" />
                            </svg>
                        </button>
                        <a href="login.html" class="btn btn-premium-login d-flex align-items-center justify-content-center">Login</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>
"@

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    $content = $content -replace '(?s)<header class="sticky-top">.*?</header>', $newHeader
    Set-Content -Path $file.FullName -Value $content -NoNewline
}
