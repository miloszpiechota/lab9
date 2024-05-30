# Etap 1: Budowanie aplikacji serwera
FROM node:16 AS build

LABEL author="MIŁOSZ PIECHOTA IO 6.7"

WORKDIR /app

# Kopiowanie plików projektu do katalogu roboczego
COPY package.json package-lock.json ./

# Instalacja zależności serwera
RUN npm install

# Kopiowanie kodu źródłowego serwera
COPY server.js ./

# Etap 2: Budowanie obrazu końcowego
FROM node:16-slim

LABEL author="MIŁOSZ PIECHOTA"

WORKDIR /app

# Kopiowanie zbudowanego serwera
COPY --from=build /app ./

# Instalacja tylko produkcyjnych zależności serwera
RUN npm install --only=production

# Ustawienie zmiennej środowiskowej na produkcję
ENV NODE_ENV=production

# Otwarcie portu na serwerze
EXPOSE 3000

# Healthcheck
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3000/ || exit 1

# Ustawienie punktu wejścia
CMD ["node", "server.js"]
