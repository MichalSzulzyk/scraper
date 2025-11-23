# Konfiguracja repozytorium na Twoim koncie GitHub

## Krok 1: Utworzenie nowego repozytorium na GitHub

1. Przejdź do: https://github.com/new
2. Wypełnij formularz:
   - **Repository name**: `scraper` (lub inna nazwa)
   - **Description**: (opcjonalnie) "Scraper ogłoszeń nieruchomości"
   - **Visibility**: Public lub Private (według preferencji)
   - **NIE zaznaczaj** "Add a README file" (mamy już kod)
   - **NIE zaznaczaj** "Add .gitignore" (chyba że chcesz)
   - **NIE zaznaczaj** "Choose a license"
3. Kliknij **"Create repository"**

## Krok 2: Zmiana remote w lokalnym repozytorium

Po utworzeniu repozytorium, GitHub pokaże Ci URL. Użyj go w poniższych komendach:

```bash
# Usuń stary remote
git remote remove origin

# Dodaj nowy remote (zamień na swój URL)
git remote add origin https://github.com/MichalSzulzyk/scraper.git

# Sprawdź czy się udało
git remote -v
```

## Krok 3: Push kodu do nowego repozytorium

```bash
# Dodaj wszystkie pliki
git add .

# Commit (jeśli są nieśledzone pliki)
git commit -m "Add scraper with GitHub Actions workflow"

# Push do nowego repozytorium
git push -u origin main
```

## Krok 4: Uruchomienie GitHub Actions

Po pushu, workflow będzie dostępny w Twoim repozytorium:

1. Przejdź do: `https://github.com/MichalSzulzyk/scraper`
2. Kliknij zakładkę **"Actions"**
3. Wybierz workflow **"Weekly Scraper"**
4. Kliknij **"Run workflow"**

## Alternatywa: Fork repozytorium

Jeśli chcesz zachować połączenie z oryginalnym repozytorium:

1. Przejdź do: https://github.com/marcin119a/scraper
2. Kliknij przycisk **"Fork"** (w prawym górnym rogu)
3. Wybierz swoje konto jako miejsce forka
4. Sklonuj swoje forkowane repozytorium lokalnie

