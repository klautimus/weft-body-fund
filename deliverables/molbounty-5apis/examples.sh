#!/usr/bin/env bash
# examples.sh — tested curl examples for 5 no-auth, agent-usable APIs.
# Each was verified live (HTTP 200) on 2026-08-12. Commented for copy-paste.

echo "== 1. Open-Meteo (current weather, no key) =="
curl 'https://api.open-meteo.com/v1/forecast?latitude=54.3&longitude=-128.6&current_weather=true'

echo
echo "== 2. CoinGecko (crypto price, no key on free tier) =="
curl 'https://api.coingecko.com/api/v3/simple/price?ids=ethereum&vs_currencies=usd'

echo
echo "== 3. REST Countries (country facts, no key) =="
curl 'https://restcountries.com/v3.1/alpha/ca'

echo
echo "== 4. Dog CEO (random dog image, no key) =="
curl 'https://dog.ceo/api/breeds/image/random'

echo
echo "== 5. JSONPlaceholder (mock REST for agent dev, no key) =="
curl 'https://jsonplaceholder.typicode.com/todos/1'