#!/bin/bash

# Lokalne uruchomienie scrapera dla wszystkich miast
# Symuluje działanie GitHub Actions workflow

echo "🚀 Uruchamianie scrapera lokalnie..."

# Sprawdź czy Python jest zainstalowany
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 nie jest zainstalowany!"
    exit 1
fi

# Sprawdź czy requirements.txt istnieje
if [ ! -f "requirements.txt" ]; then
    echo "❌ Plik requirements.txt nie istnieje!"
    exit 1
fi

# Zainstaluj zależności (jeśli nie są zainstalowane)
echo "📦 Instalowanie zależności..."
pip install -r requirements.txt

# Utwórz katalog data jeśli nie istnieje
mkdir -p data

# Lista miast (taka sama jak w workflow)
CITIES=("lodz" "krakow")

# Uruchom scraper dla każdego miasta
for city in "${CITIES[@]}"; do
    echo ""
    echo "🏙️  Scrapowanie dla miasta: $city"
    python3 scaper.py --city "$city" --pages 8 --output "data/ogloszenia_${city}.csv"
    
    if [ $? -eq 0 ]; then
        echo "✅ Zakończono scrapowanie dla $city"
    else
        echo "❌ Błąd podczas scrapowania dla $city"
    fi
done

echo ""
echo "✨ Zakończono! Pliki CSV znajdują się w katalogu data/"

