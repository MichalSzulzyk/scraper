#!/bin/bash

# Skrypt do zmiany remote na Twoje repozytorium GitHub
# Użycie: ./change_remote.sh

echo "🔄 Zmienianie remote na Twoje repozytorium..."

# Usuń stary remote
git remote remove origin

# Dodaj nowy remote (zmień MichalSzulzyk na swoją nazwę użytkownika jeśli jest inna)
git remote add origin https://github.com/MichalSzulzyk/scraper.git

# Sprawdź czy się udało
echo ""
echo "✅ Remote został zmieniony:"
git remote -v

echo ""
echo "📤 Teraz możesz zrobić push:"
echo "   git push -u origin main"

