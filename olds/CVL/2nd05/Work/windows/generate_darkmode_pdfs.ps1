Get-ChildItem -Recurse -Filter '*-dark.pdf' -ErrorAction 'SilentlyContinue' | % { $_.FullName } | del
cd Matiere
Foreach ($file in (Get-ChildItem -Recurse -Filter '*.pdf' -ErrorAction 'SilentlyContinue' | % { $_.FullName }))
{
	
	$file_noext="$(join-path ([system.io.fileinfo]$File).DirectoryName  ([system.io.fileinfo]$file).BaseName)-dark.pdf"

	$file="`"$file`""
	$file_noext="`"$file_noext`""
	Write-Host "the pdf 	: '$file'"
	Write-Host "the dark pdf 	: '$file_noext'"
	Start-Process -NoNewWindow  -FilePath ".\..\windows\cperl\bin\cperl.exe" -ArgumentList ".\..\windows\invert_pdf_colors.pl","$file","$file_noext"
	#& ".\..\windows\cperl\bin\cperl.exe" ".\..\windows\invert_pdf_colors.pl" "$file" "$file_noext-dark.pdf"
}

cd ..
