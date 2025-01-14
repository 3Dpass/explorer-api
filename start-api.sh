# If there's a prestart.sh script in the /app directory, run it before starting
source ./prestart.sh
# Start Uvicorn with live reload
exec uvicorn --host 0.0.0.0 --port 8000 --log-level info "app.main:app" --forwarded-allow-ips='*' --proxy-headers