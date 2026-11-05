function Test-Palindrom {
    param (
        [string]$Text
    )

    # Převod na malá písmena a rozložení diakritiky
    $upraveny = $Text.ToLowerInvariant().Normalize(
        [System.Text.NormalizationForm]::FormD
    )

    # Odstranění diakritiky, mezer a interpunkce
    $upraveny = $upraveny -replace '\p{Mn}', ''
    $upraveny = $upraveny -replace '[^\p{L}\p{Nd}]', ''

    # Obrácení pořadí znaků
    $znaky = $upraveny.ToCharArray()
    [Array]::Reverse($znaky)
    $obraceny = -join $znaky

    # Vrátí True, pokud jsou oba texty stejné
    return ($upraveny -eq $obraceny)
}

# Text zadaný uživatelem
$text = Read-Host "Zadejte text"

if (Test-Palindrom -Text $text) {
    Write-Host "Zadaný text je palindrom."
} else {
    Write-Host "Zadaný text není palindrom."
}

# Testování všech příkladů ze zadání
$testy = @(
    "Jelenovi pivo nelej"
    "Kobyla má malý bok"
    "Kupředu udeř puk"
    "Dal kopat Ota poklad"
    "Toto není palindrom"
)

Write-Host "`nTesty ze zadání:"

foreach ($test in $testy) {
    if (Test-Palindrom -Text $test) {
        Write-Host "$test → je palindrom"
    } else {
        Write-Host "$test → není palindrom"
    }
}
