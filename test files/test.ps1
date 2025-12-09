# Once upon a time... PowerShell example
$Vampire = [PSCustomObject]@{
  Location = 'Transylvania'
  Birth = 1428
  Death = 1476
  Weaknesses = @('Sunlight','Garlic')
}

function Get-Age($v) { $v.Death - $v.Birth }

Write-Host "$($Vampire.Location) age: $(Get-Age $Vampire)"
$Vampire.Weaknesses | ForEach-Object { Write-Host " - $_" }
