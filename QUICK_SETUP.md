# Szybka konfiguracja - 3 kroki

## Krok 1: Utwórz puste repozytorium na GitHub (2 minuty)

1. Otwórz w przeglądarce: **https://github.com/new**
2. Wypełnij:
   - **Repository name**: `scraper`
   - **Description**: (opcjonalnie) "Scraper ogłoszeń nieruchomości"
   - **Public** lub **Private** (według preferencji)
   - ⚠️ **NIE zaznaczaj** "Add a README file"
   - ⚠️ **NIE zaznaczaj** "Add .gitignore"
   - ⚠️ **NIE zaznaczaj** "Choose a license"
3. Kliknij **"Create repository"**

## Krok 2: Zmień remote i push (wykonam za Ciebie)

Po utworzeniu repozytorium, powiedz mi "gotowe" a ja:
- Zmienię remote na Twoje repozytorium
- Wypushuję cały kod
- GitHub Actions automatycznie się aktywują

## Krok 3: Uruchom workflow

1. Przejdź do: `https://github.com/MichalSzulzyk/scraper`
2. Kliknij zakładkę **"Actions"**
3. Wybierz workflow **"Weekly Scraper"**
4. Kliknij **"Run workflow"** → **"Run workflow"**

---

## Alternatywa: Użyj skryptu z tokenem

Jeśli masz GitHub Personal Access Token:

```bash
export GITHUB_TOKEN='twój_token'
./create_repo.sh
```

Jak uzyskać token: https://github.com/settings/tokens (scope: `repo`)

