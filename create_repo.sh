#!/bin/bash

# Skrypt do utworzenia repozytorium na GitHub używając API
# Wymaga GitHub Personal Access Token

echo "🔧 Tworzenie repozytorium na GitHub..."

# Sprawdź czy token jest ustawiony
if [ -z "$GITHUB_TOKEN" ]; then
    echo "❌ Błąd: Musisz ustawić zmienną środowiskową GITHUB_TOKEN"
    echo ""
    echo "Jak uzyskać token:"
    echo "1. Przejdź do: https://github.com/settings/tokens"
    echo "2. Kliknij 'Generate new token (classic)'"
    echo "3. Nadaj nazwę (np. 'scraper-repo')"
    echo "4. Zaznacz scope 'repo' (pełny dostęp do repozytoriów)"
    echo "5. Kliknij 'Generate token'"
    echo "6. Skopiuj token i uruchom:"
    echo "   export GITHUB_TOKEN='twój_token'"
    echo "   ./create_repo.sh"
    exit 1
fi

# Nazwa użytkownika (zmień jeśli potrzebne)
USERNAME="MichalSzulzyk"
REPO_NAME="scraper"

echo "📦 Tworzenie repozytorium: $USERNAME/$REPO_NAME"

# Utwórz repozytorium przez API
RESPONSE=$(curl -s -w "\n%{http_code}" -X POST \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/user/repos \
  -d "{\"name\":\"$REPO_NAME\",\"description\":\"Scraper ogłoszeń nieruchomości z GitHub Actions\",\"private\":false}")

HTTP_CODE=$(echo "$RESPONSE" | tail -n1)
BODY=$(echo "$RESPONSE" | sed '$d')

if [ "$HTTP_CODE" -eq 201 ]; then
    echo "✅ Repozytorium zostało utworzone!"
    echo ""
    echo "🔗 URL: https://github.com/$USERNAME/$REPO_NAME"
    echo ""
    echo "📤 Teraz możesz zmienić remote i zrobić push:"
    echo "   git remote remove origin"
    echo "   git remote add origin https://github.com/$USERNAME/$REPO_NAME.git"
    echo "   git push -u origin main"
else
    echo "❌ Błąd podczas tworzenia repozytorium"
    echo "HTTP Code: $HTTP_CODE"
    echo "Response: $BODY"
    
    if [ "$HTTP_CODE" -eq 422 ]; then
        echo ""
        echo "💡 Repozytorium może już istnieć. Sprawdź: https://github.com/$USERNAME/$REPO_NAME"
    fi
    exit 1
fi

