# Jak uruchomić scraper lokalnie

## Opcja 1: Proste uruchomienie (zalecane) 🚀

Użyj gotowego skryptu bash:

```bash
./run_local.sh
```

Lub uruchom ręcznie dla pojedynczego miasta:

```bash
# Zainstaluj zależności (tylko raz)
pip install -r requirements.txt

# Uruchom dla Łodzi
python3 scaper.py --city lodz --pages 8 --output data/ogloszenia_lodz.csv

# Uruchom dla Krakowa
python3 scaper.py --city krakow --pages 8 --output data/ogloszenia_krakow.csv
```

## Opcja 2: Uruchomienie z użyciem `act` (symulacja GitHub Actions) 🔧

`act` to narzędzie, które pozwala uruchomić GitHub Actions workflow lokalnie.

### Instalacja `act`:

**macOS:**
```bash
brew install act
```

**Linux:**
```bash
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
```

**Windows:**
```bash
choco install act-cli
# lub
scoop install act
```

### Uruchomienie workflow:

```bash
# Uruchom cały workflow (wszystkie joby)
act workflow_dispatch

# Uruchom tylko job scrapera (bez commita)
act -j run-scraper

# Uruchom tylko dla jednego miasta (przykład)
act -j run-scraper --matrix city:lodz
```

**Uwaga:** `act` wymaga Dockera do działania. Jeśli nie masz Dockera, użyj Opcji 1.

## Opcja 3: Uruchomienie bezpośrednio w Pythonie 🐍

Możesz też uruchomić skrypt bezpośrednio w Pythonie:

```python
from scaper import main

# Dla Łodzi
main('lodz', 8, 'data/ogloszenia_lodz.csv')

# Dla Krakowa
main('krakow', 8, 'data/ogloszenia_krakow.csv')
```

## Sprawdzenie wyników

Po uruchomieniu, pliki CSV znajdziesz w katalogu `data/`:
- `data/ogloszenia_lodz.csv`
- `data/ogloszenia_krakow.csv`

