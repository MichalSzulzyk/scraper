# Jak uruchomić workflow w GitHub Actions

## Krok 1: Push zmian do GitHub

Jeśli jeszcze nie zrobiłeś pusha, wykonaj:

```bash
git push
```

Jeśli masz problemy z autoryzacją, użyj:
```bash
git push origin main
```

## Krok 2: Uruchomienie workflow

### Opcja A: Ręczne uruchomienie (workflow_dispatch)

1. Przejdź do swojego repozytorium na GitHub: `https://github.com/marcin119a/scraper`
2. Kliknij zakładkę **"Actions"** (na górze strony)
3. W menu po lewej stronie wybierz workflow **"Weekly Scraper"**
4. Kliknij przycisk **"Run workflow"** (po prawej stronie)
5. Wybierz branch (domyślnie `main`)
6. Kliknij **"Run workflow"**

### Opcja B: Automatyczne uruchomienie (schedule)

Workflow uruchomi się automatycznie:
- **Co poniedziałek o 6:00 UTC** (zgodnie z harmonogramem w pliku)

## Krok 3: Monitorowanie wykonania

1. Po uruchomieniu zobaczysz listę uruchomień workflow
2. Kliknij na najnowsze uruchomienie, aby zobaczyć postęp
3. Zobaczysz:
   - **run-scraper** - uruchamia się dla każdego miasta (lodz, krakow) równolegle
   - **commit-changes** - czeka na zakończenie scraperów i commituje zmiany

## Krok 4: Pobieranie artefaktów

Po zakończeniu workflow:

1. Na stronie uruchomienia przewiń w dół
2. W sekcji **"Artifacts"** zobaczysz:
   - `ogloszenia_lodz` - plik CSV dla Łodzi (dostępny 30 dni)
   - `ogloszenia_krakow` - plik CSV dla Krakowa (dostępny 30 dni)
3. Kliknij na nazwę artefaktu, aby go pobrać

## Krok 5: Sprawdzenie zmian w repozytorium

Po zakończeniu workflow, pliki CSV powinny być automatycznie:
- Zapisane w katalogu `data/` w repozytorium
- Zcommitowane z komunikatem: "Update scraped data [data i godzina]"

## Rozwiązywanie problemów

### Workflow się nie uruchamia
- Sprawdź czy plik `.github/workflows/scaper.yml` jest w repozytorium
- Sprawdź czy masz uprawnienia do uruchamiania workflow

### Błąd podczas commita
- Upewnij się, że workflow ma uprawnienia `contents: write`
- Sprawdź czy branch `main` istnieje i jest domyślny

### Błąd podczas scrapowania
- Sprawdź logi w GitHub Actions
- Upewnij się, że strony są dostępne i scraper działa poprawnie

