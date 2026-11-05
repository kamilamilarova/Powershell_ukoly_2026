# Úkol 2 – Paleta barev v PowerShellu

## Zadání

Vytvořte skript, který vykreslí paletu 16 odstínů barev přednastavených v terminálu

## Postup

Seznam barev se získá pomocí [System.Enum]::GetValues([System.ConsoleColor]). Uložila jsem ho do proměnné $barvy. Cyklus foreach následně projde všechny barvy a pro každou vypíše tři sloupce pomocí příkazu Write-Host.

V prvním sloupci je název barvy zobrazen šedým textem na černém pozadí. Ve druhém sloupci má text právě zpracovávanou barvu. Ve třetím sloupci je daná barva použita jako pozadí.

ForegroundColor nastavuje barvu textu

BackgroundColor barvu pozadí

NoNewline umožňuje vypsat více sloupců na jeden řádek

"{0,-15}" zarovnává názvy doleva do sloupců o šířce 15 znaků

<img width="945" height="516" alt="image" src="https://github.com/user-attachments/assets/a764ca55-119f-4c77-89c6-7ae74980944b" />

