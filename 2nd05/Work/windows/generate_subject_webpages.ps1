cd Matiere
Get-ChildItem -Recurse -Filter "*.pdf" | % { $_.FullName }  | Split-Path | Split-Path -Leaf | select -Unique | ..\windows\generate_subject_webpages\generate_subject_webpages.exe