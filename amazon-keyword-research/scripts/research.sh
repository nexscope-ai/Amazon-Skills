#!/bin/bash
# Amazon Keyword Research - Data Gathering Script
# Fetches Amazon autocomplete suggestions for a given keyword
# Usage: research.sh <keyword> [marketplace]
# Marketplace: us (default), uk, de, fr, it, es, jp, ca, au, in, mx, br

KEYWORD="${1:?Usage: research.sh <keyword> [marketplace]}"
MARKETPLACE="${2:-us}"

# Map marketplace to Amazon domain and market ID
case "$MARKETPLACE" in
  us) DOMAIN="amazon.com"; MKT="ATVPDKIKX0DER" ;;
  uk) DOMAIN="amazon.co.uk"; MKT="A1F83G8C2ARO7P" ;;
  de) DOMAIN="amazon.de"; MKT="A1PA6795UKMFR9" ;;
  fr) DOMAIN="amazon.fr"; MKT="A13V1IB3VIYZZH" ;;
  it) DOMAIN="amazon.it"; MKT="APJ6JRA9NG5V4" ;;
  es) DOMAIN="amazon.es"; MKT="A1RKKUPIHCS9HS" ;;
  jp) DOMAIN="amazon.co.jp"; MKT="A1VC38T7YXB528" ;;
  ca) DOMAIN="amazon.ca"; MKT="A2EUQ1WTGCTBG2" ;;
  au) DOMAIN="amazon.com.au"; MKT="A39IBJ37TRP1C6" ;;
  in) DOMAIN="amazon.in"; MKT="A21TJRUUN4KGV" ;;
  mx) DOMAIN="amazon.com.mx"; MKT="A1AM78C64UM0Y8" ;;
  br) DOMAIN="amazon.com.br"; MKT="A2Q3Y263D00KWC" ;;
  *) echo "Unknown marketplace: $MARKETPLACE"; exit 1 ;;
esac

echo "=== Amazon Keyword Research ==="
echo "Keyword: $KEYWORD"
echo "Marketplace: $MARKETPLACE ($DOMAIN)"
echo ""

# 1. Fetch Amazon Autocomplete Suggestions
echo "--- Amazon Autocomplete Suggestions ---"
# Amazon's completion API returns search suggestions
ENCODED_KW=$(python3 -c "import urllib.parse; print(urllib.parse.quote('$KEYWORD'))")

# Fetch autocomplete with different prefixes for more suggestions
for prefix in "" "best " "cheap " "top "; do
  SEARCH_TERM="${prefix}${KEYWORD}"
  ENCODED=$(python3 -c "import urllib.parse; print(urllib.parse.quote('${SEARCH_TERM}'))")
  RESULT=$(curl -s "https://completion.${DOMAIN}/api/2017/suggestions?mid=${MKT}&alias=aps&prefix=${ENCODED}" 2>/dev/null)
  if [ -n "$RESULT" ]; then
    echo "$RESULT" | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    suggestions = data.get('suggestions', [])
    for s in suggestions:
        print(s.get('value', ''))
except:
    pass
" 2>/dev/null
  fi
done | sort -u

echo ""
echo "--- Alphabet Expansion ---"
# Expand with a-z suffixes for more long-tail keywords
for letter in a b c d e f g h i j k l m n o p q r s t u v w x y z; do
  SEARCH_TERM="${KEYWORD} ${letter}"
  ENCODED=$(python3 -c "import urllib.parse; print(urllib.parse.quote('${SEARCH_TERM}'))")
  RESULT=$(curl -s "https://completion.${DOMAIN}/api/2017/suggestions?mid=${MKT}&alias=aps&prefix=${ENCODED}" 2>/dev/null)
  if [ -n "$RESULT" ]; then
    echo "$RESULT" | python3 -c "
import sys, json
try:
    data = json.load(sys.stdin)
    suggestions = data.get('suggestions', [])
    for s in suggestions:
        print(s.get('value', ''))
except:
    pass
" 2>/dev/null
  fi
done | sort -u

echo ""
echo "=== Data collection complete ==="
