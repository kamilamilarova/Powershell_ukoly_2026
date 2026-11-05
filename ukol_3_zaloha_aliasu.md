# Úkol 3 – Záloha a obnova aliasů

## Zadání

Vytvořte alias np (notepad.exe) a ct (control.exe). Oba aliasy si zálohujte do formátu JSON a také do formátu XML. Potom oba aliasy smažte a obnovte je z JSON souboru. Znovu je smažte a obnovte z XML souboru.

## Postup

Pomocí příkazu Set-Alias jsem vytvořila aliasy np pro spuštění programu notepad.exe a ct pro spuštění programu control.exe. Příkazem Get-Alias jsem vybrala oba aliasy a pomocí Select-Object jsem z nich získlala vlastnosti Name a Definition.

Pro zálohu do JSON jsem použila příkaz ConvertTo-Json a výsledek jsem uložila pomocí Set-Content do souboru aliasy.json. Zálohu do XML jsem vytvořila za pomoci příkazu Export-Clixml do souboru aliasy.xml.

Oba aliasy jsem potom odstranila příkazem Remove-Item. Poté jsem je obnovila příkazem Get-Content a převedla na objekty příkazem ConvertFrom-Json. Příkaz ForEach-Object prošel jednotlivé záznamy a pomocí Set-Alias jsem znovu vytvořila oba aliasy.

Poté jsem je znovu odstranila a stejným způsobem vytvořila z údajů načtených příkazem Import-Clixml ze zálohy XML. V průběhu jsem kontrolovala správnost provedení pomocí příkazu Get-Alias -Name np, ct.

<img width="944" height="535" alt="image" src="https://github.com/user-attachments/assets/b00309b5-f43c-4cc3-b5c4-e57fbdfb6920" />
<img width="945" height="579" alt="image" src="https://github.com/user-attachments/assets/e3627c41-c95c-4edc-9c32-558ff0a65b64" />

