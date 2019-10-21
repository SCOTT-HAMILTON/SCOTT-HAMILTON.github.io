
$temp_path=$env:TEMP+"\monetcours_zip"

Write-Host "folder : '$temp_path'"
Remove-Item $temp_path -Recurse -ErrorAction Ignore

New-Item -ItemType Directory -Force -Path $temp_path | Out-Null

Get-ChildItem -Path ..\Matiere -Recurse -Filter "*.pdf" | % { $_.FullName }  | Split-Path | Split-Path -Leaf  | select -Unique | foreach {

cd $_

New-Item -ItemType Directory -Force -Path $temp_path\$_ | Out-Null
New-Item -ItemType Directory -Force -Path $temp_path\$_\images | Out-Null
$mat=$_
Write-Host "My current path is $_"
Get-ChildItem -Recurse -File -ErrorAction 'SilentlyContinue' | % {$_.FullName} | Select-String -CaseSensitive -Pattern ".*images.*([jJ][pP][gG]|[jJ][pP][eE][gG])$|.*pdf$" | foreach {
	$copy_path=""
	$str=$_.ToString()
	if($str.Contains('\images\')) {
		$copy_path=$temp_path+'\'+$mat+"\images\"+$(Split-Path -Leaf $_)
	} else {
	    $copy_path=$temp_path+'\'+$mat+'\'+$(Split-Path -Leaf $_)
	}
	Write-Host "FILE : '$_'"
	Write-Host "copied : '$copy_path'"
	Copy-Item $_ $copy_path
}
cd ..
}


.\..\windows\7za920\7za.exe a all_pdfs.zip $temp_path

Remove-Item $temp_path -Recurse -ErrorAction Ignore