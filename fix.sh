cd /opt/traefik

docker compose down

rm -rf acme.json
touch acme.json
chmod 600 acme.json

docker compose up -d
docker logs traefik --tail=100