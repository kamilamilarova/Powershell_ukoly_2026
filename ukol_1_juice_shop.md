# Úkol 1 – OWASP Juice Shop

## Zadání

V aplikaci OWASP JuiceShop si kupte Vánoční speciál z roku 2014 a při nákupu uplatněte kupón na 50% slevu z října 2026. Postup podrobně popište a doložte snímky obrazovek.

## Postup

Nejdřív jsem se přihlásila do OWASP Juice shop, otevřela jsem si v DevTools záložku networks a zkusila jsem přidat libovolný produkt do košíku. Našla jsem si požadavek GET, kde je Request URL http://localhost:3000/rest/products/search?q=

<img width="944" height="438" alt="image" src="https://github.com/user-attachments/assets/313363e3-0a38-4236-9381-7b607570383f" />


Za pomoci SQL Injection jsem do adresního řádku zadala http://localhost:3000/rest/products/search?q=%27%29%29--, čímž jsem získala informaci o všech produktech a jejich id.

<img width="945" height="440" alt="image" src="https://github.com/user-attachments/assets/d4ffe07f-ff10-4346-8f38-a7fd3316b520" />


Vrátila jsem se zpět do DevTools a vyhledala jsem požadavek POST, který se váže na přidání produktu do košíku. Zkopírovala jsem JavaScriptový kód a upravila následovně:

<img width="945" height="461" alt="image" src="https://github.com/user-attachments/assets/e6ad4035-018d-4de4-b6c3-839b76e5b8f8" />


Přidala jsem parametry ProductId a quantity. Do ProductId jsem napsala id Christmas boxu. Napsala jsem to do console a obnovila stránku.

Zjistila jsem, že na http://3000/ftp  je soubor coupons_2013.md.bak, který nešel otevřít. Použila jsem Null Byte Injection (%00) ale musela jsem změnit znak % na %25. Do adresního řádku jsem zadala http://localhost:3000/ftp/coupons_2013.md.bak%2500.md, čímž se mi podařilo stáhnout soubor.

<img width="945" height="596" alt="image" src="https://github.com/user-attachments/assets/86d35016-4b2e-4f7a-8bc9-c8b177d64a50" />


Soubor obsahoval již zakódované kupńy. Ze souboru package-lock.json.bak jsem zjistila, že jde o z85. Stačilo je jen dekodovat pomocí z85 a tím jsem odhalila strukturu kupónů. Nakonec jsem svůj vytvořený kupón zakódovala v Powershellu a vložila v košíku při placení.

<img width="746" height="206" alt="image" src="https://github.com/user-attachments/assets/7cde8f0e-4da1-4ecd-84a8-b405450255a0" />

<img width="944" height="533" alt="image" src="https://github.com/user-attachments/assets/31efd133-38e6-4ee7-99d8-db9886a7eede" />

<img width="944" height="438" alt="image" src="https://github.com/user-attachments/assets/46e1f853-a10f-4b66-a295-513daeecde3c" />




