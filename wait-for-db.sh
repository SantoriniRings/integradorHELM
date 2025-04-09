echo "Esperando a que la base de datos esté lista..."

while ! nc -z db 5432; do
  sleep 1
done

echo "Base de datos disponible, arrancando servidor..."

exec "$@"