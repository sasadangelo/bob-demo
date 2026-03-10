# Usa l'immagine ufficiale Python con uv pre-installato
FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim

# Imposta la directory di lavoro
WORKDIR /app

# Copia i file di configurazione delle dipendenze
COPY pyproject.toml ./

# Installa le dipendenze usando uv (senza editable mode)
RUN uv pip install --system --no-cache flask gunicorn

# Copia il codice dell'applicazione
COPY app.py ./
COPY templates/ ./templates/

# Esponi la porta 5000
EXPOSE 5000

# Crea un utente non-root per sicurezza
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/health')"

# Comando per avviare l'applicazione con gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "--workers", "2", "--timeout", "60", "app:app"]