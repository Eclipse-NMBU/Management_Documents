Get-ChildItem -Path "C:\Gabriel\Projects\Eclipse\Management_Documents\General assembly\H2026" -Filter "*.tex" -Recurse |
ForEach-Object {
    Push-Location $_.DirectoryName
    latexmk -xelatex -interaction=nonstopmode -halt-on-error $_.Name
    Pop-Location
} 