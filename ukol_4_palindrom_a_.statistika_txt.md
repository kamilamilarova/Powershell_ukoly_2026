# Úkol 4 – Zpracování textu v PowerShellu

## Část 1 – Palindrom

### Zadání

Vytvořte program v PowerShellu, který ověří, zda je zadaný text palindrom.

### Postup

Vytvořila jsem funkci `Test-Palindrom`, která porovná zadaný text s jeho obrácenou podobou. Před porovnáním převede text na malá písmena a odstraní diakritiku, mezery a interpunkci. Pokud jsou oba texty stejné, jde o palindrom.

Text od uživatele načítá příkaz `Read-Host`. Pořadí znaků obrací `[Array]::Reverse()` a porovnání provádí operátor `-eq`. Program vypíše výsledek a pomocí cyklu `foreach` zkontroluje také příklady ze zadání.

Skript jsem uložila jako `palindrom.ps1`. Ve složce se souborem se spouští příkazem:

```powershell
.\palindrom.ps1
```
<img width="591" height="227" alt="image" src="https://github.com/user-attachments/assets/de47f9a8-706e-4e30-88c1-4b0a5df0bafd" />


## Část 2 – Počítání znaků, samohlásek a slov

### Zadání

Vytvořte program, kterému v terminálu předáte text a který vypíše počet znaků s mezerami i bez mezer, počet samohlásek a počet slov.

### Postup

Text načítá příkaz `Read-Host`. Vlastnost `.Length` zjistí počet znaků. Pro počet znaků bez mezer se nejdříve odstraní bílé znaky pomocí `-replace '\s', ''`. Samohlásky včetně diakritiky a písmene y se počítají pomocí `[regex]::Matches()`. Stejným způsobem se počítají slova jako skupiny znaků oddělené bílými znaky. Výsledky se vypíšou příkazem `Write-Host`.

### Testovací text

> Lewis Powell působil jako právník specializující se na tabákový průmysl ve společnosti Philip Morris. Byl pověřen, aby pro Americkou obchodní komoru vypracoval důvěrný dokument s cílem obnovit a rozšířit vliv korporací.

<img width="1458" height="180" alt="image" src="https://github.com/user-attachments/assets/eb3272f5-0730-43e2-b4dc-0bba4b48d684" />

