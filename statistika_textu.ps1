# Druhá část – počítání znaků, samohlásek a slov
$text = Read-Host "Zadejte text pro počítání"

# Počet znaků včetně mezer a interpunkce
$sMezerami = $text.Length

# Odstranění mezer, tabulátorů a dalších bílých znaků
$bezMezer = ($text -replace '\s', '').Length

# Počet samohlásek bez ohledu na velikost písmen
$samohlasky = [regex]::Matches(
    $text, '(?i)[aáeéěiíoóuúůyý]'
).Count

# Slova jsou skupiny znaků oddělené bílými znaky
$slova = [regex]::Matches($text, '\S+').Count

Write-Host "Počet znaků s mezerami: $sMezerami"
Write-Host "Počet znaků bez mezer: $bezMezer"
Write-Host "Počet samohlásek: $samohlasky"
Write-Host "Počet slov: $slova"