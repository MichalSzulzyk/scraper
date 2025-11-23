# Instrukcja push do Twojego repozytorium

Remote został już zmieniony na: `https://github.com/MichalSzulzyk/scraper.git`

## Sposób 1: Push z tokenem (zalecane)

1. **Utwórz Personal Access Token:**
   - Przejdź do: https://github.com/settings/tokens
   - Kliknij "Generate new token (classic)"
   - Nadaj nazwę (np. "scraper-push")
   - Zaznacz scope: **`repo`** (pełny dostęp do repozytoriów)
   - Kliknij "Generate token"
   - **Skopiuj token** (będzie widoczny tylko raz!)

2. **Wykonaj push używając tokenu:**
   ```bash
   git push -u origin main
   ```
   
   Gdy zapyta o hasło, użyj **tokenu** zamiast hasła.

## Sposób 2: Push przez GitHub Desktop

Jeśli masz GitHub Desktop:
1. Otwórz GitHub Desktop
2. Dodaj repozytorium: File → Add Local Repository
3. Wybierz folder: `/Users/air/Local_Docs_Air/AI_Programming/scraper`
4. Kliknij "Publish repository"

## Sposób 3: Push przez przeglądarkę (GitHub Web UI)

1. Przejdź do: https://github.com/MichalSzulzyk/scraper
2. Kliknij "uploading an existing file"
3. Przeciągnij wszystkie pliki z katalogu `scraper`
4. Kliknij "Commit changes"

---

## Po pushu:

1. Przejdź do: https://github.com/MichalSzulzyk/scraper
2. Kliknij zakładkę **"Actions"**
3. Wybierz workflow **"Weekly Scraper"**
4. Kliknij **"Run workflow"** → **"Run workflow"**

Workflow automatycznie się uruchomi i zacznie scrapować dane!

