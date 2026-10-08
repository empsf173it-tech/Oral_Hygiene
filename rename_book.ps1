$files = Get-ChildItem -Path f:\Smartfusion\October\Oral_Hygiene -Filter *.html
foreach ($file in $files) {
    $c = Get-Content $file.FullName -Raw
    $c = $c -replace 'href="contact\.html">Book</a>', 'href="contact.html">Contact</a>'
    Set-Content $file.FullName -Value $c -NoNewline
}
