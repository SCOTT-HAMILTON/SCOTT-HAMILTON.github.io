function Remove-StringDiacritic {
param ([String]$src = [String]::Empty)
  $normalized = $src.Normalize( [Text.NormalizationForm]::FormD )
  $sb = new-object Text.StringBuilder
  $normalized.ToCharArray() | % { 
    if( [Globalization.CharUnicodeInfo]::GetUnicodeCategory($_) -ne [Globalization.UnicodeCategory]::NonSpacingMark) {
      [void]$sb.Append($_)
    }
  }
  $sb.ToString()
}

cd Matiere

Get-ChildItem -Recurse -Filter "*.md*.pdf" | % {$_.FullName} | % {$file="$_";$newfile="$(Split-Path -Path $file)\$(Split-Path -Leaf -Path $file| %{$_.Substring(0,$_.Length-6)})pdf";Write-Host "Renameing '$file'`nTo '$newfile'";Rename-Item "$file" "$newfile"}

Get-ChildItem -Recurse -Filter "*.md*.yaml" | % {$_.FullName} | % {$file="$_";$newfile="$(Split-Path -Path $file)\$(Split-Path -Leaf -Path $file| %{$_.Substring(0,$_.Length-7)})yaml";Write-Host "Renameing '$file'`nTo '$newfile'";Rename-Item "$file" "$newfile"}


Foreach ($file in (Get-ChildItem -Recurse -File -ErrorAction 'SilentlyContinue' | % {$_.FullName} | Select-String -CaseSensitive -Pattern ".*images.*([jJ][pP][gG]|[jJ][pP][eE][gG])$|.*pdf$"))
{
    $newfile = $(Split-Path $file)+"\"+(Remove-StringDiacritic (Split-Path -Leaf $file))
    if ("$file" -cne "$newfile"){
      Write-Host "Renameing '$file'"
      Write-Host "To '$newfile'"
      Rename-Item "$file" "$newfile"
    }
}

cd ..
