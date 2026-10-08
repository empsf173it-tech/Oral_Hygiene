$directory = "f:\Smartfusion\October\Oral_Hygiene"

$files = Get-ChildItem -Path $directory -Filter *.html

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw

    # Remove RTL button
    $content = $content -replace '(?m)<button class="btn btn-outline-custom d-flex align-items-center justify-content-center px-2"[\s\n]*onclick="let dirTarget[^"]+"[\s\n]*title="Toggle RTL">RTL</button>\s*', ''

    # Remove Home2 link
    $content = $content -replace '(?m)<li class="nav-item">\s*<a class="nav-link[^>]*" href="home-2\.html">Home2</a>\s*</li>\s*', ''

    # Replace brand name
    $content = $content -replace 'Dental Clinic', 'Premium Oral Care'

    Set-Content -Path $file.FullName -Value $content -NoNewline
}

$home2Path = Join-Path -Path $directory -ChildPath "home-2.html"
if (Test-Path $home2Path) {
    Remove-Item $home2Path
}
