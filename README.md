# 🚀 Bob Demo Project

Demo application Flask containerizzata per mostrare best practices moderne a team cross-funzionali (Developer, DevOps, Security).

## 📋 Caratteristiche

- **Flask Web Application**: Semplice e moderna interfaccia web
- **Containerizzazione Docker**: Build ottimizzato con multi-stage
- **uv Package Manager**: Gestione dipendenze veloce e moderna
- **Production-Ready**: Gunicorn WSGI server
- **Health Checks**: Endpoint per monitoring
- **Security**: Container non-root, minimal attack surface

## 🛠️ Tech Stack

- **Python 3.11+**
- **Flask 3.0+**
- **uv** (package manager)
- **Gunicorn** (WSGI server)
- **Docker/Podman**

## 🚀 Quick Start

### Prerequisiti

- Docker o Podman installato
- (Opzionale) Python 3.11+ e uv per sviluppo locale

### Opzione 1: Docker/Podman

```bash
# Build dell'immagine
docker build -t bob-demo:latest .
# oppure con Podman
podman build -t bob-demo:latest .

# Run del container
docker run -d -p 5000:5000 --name bob-demo-app bob-demo:latest
# oppure con Podman
podman run -d -p 5000:5000 --name bob-demo-app bob-demo:latest

# L'applicazione sarà disponibile su http://localhost:5000
```

### Opzione 2: Sviluppo locale con uv

```bash
# Installa uv se non già presente
curl -LsSf https://astral.sh/uv/install.sh | sh

# Crea virtual environment e installa dipendenze
uv venv
source .venv/bin/activate  # Su Windows: .venv\Scripts\activate
uv pip install -e .

# Avvia l'applicazione
python app.py

# L'applicazione sarà disponibile su http://localhost:5000
```

## 📊 Endpoints

- `GET /` - Homepage con informazioni sul progetto
- `GET /health` - Health check endpoint (ritorna JSON con status)

## 🎯 Cosa Mostrare nella Demo

### Per Developer 💻

- **Clean Code**: Struttura chiara e modulare
- **Modern Python**: Uso di pyproject.toml e uv
- **Best Practices**: Type hints, docstrings, error handling
- **Testing Ready**: Struttura pronta per unit e integration tests

### Per DevOps 🚀

- **Containerizzazione**: Dockerfile ottimizzato
- **Health Checks**: Monitoring integrato
- **Production Ready**: Gunicorn con worker configurabili
- **Security**: Container non-root, minimal base image
- **Portabilità**: Funziona con Docker e Podman

### Per Security 🔒

- **Non-root User**: Container eseguito con utente non privilegiato
- **Minimal Attack Surface**: Immagine slim, solo dipendenze necessarie
- **Health Monitoring**: Endpoint per verificare lo stato dell'app
- **No Secrets in Code**: Environment variables per configurazione
- **Dependency Management**: uv per gestione sicura delle dipendenze

## 🔧 Comandi Utili

```bash
# Visualizza i log
docker logs -f bob-demo-app
# oppure con Podman
podman logs -f bob-demo-app

# Ferma l'applicazione
docker stop bob-demo-app
# oppure con Podman
podman stop bob-demo-app

# Rimuovi il container
docker rm bob-demo-app
# oppure con Podman
podman rm bob-demo-app

# Accedi al container
docker exec -it bob-demo-app /bin/bash
# oppure con Podman
podman exec -it bob-demo-app /bin/bash

# Verifica health check
curl http://localhost:5000/health
```

## 📈 Possibili Estensioni

Questa demo può essere facilmente estesa per mostrare:

1. **CI/CD Pipeline**: GitHub Actions, GitLab CI, Jenkins
2. **Testing**: pytest, coverage, integration tests
3. **Security Scanning**: Trivy, Snyk, SAST tools
4. **Monitoring**: Prometheus, Grafana
5. **Logging**: ELK Stack, Loki
6. **Infrastructure as Code**: Terraform, Kubernetes manifests
7. **API Documentation**: OpenAPI/Swagger
8. **Database Integration**: PostgreSQL, Redis

## 📝 Struttura del Progetto

```
bob-demo/
├── app.py                 # Applicazione Flask principale
├── templates/
│   └── index.html        # Template HTML
├── pyproject.toml        # Configurazione progetto e dipendenze
├── Dockerfile            # Configurazione Docker/Podman
├── .dockerignore         # File da escludere dal build
├── .gitignore            # File da escludere da Git
└── README.md            # Questa documentazione
```

## 🤝 Contribuire

Questo è un progetto demo. Sentiti libero di:
- Aggiungere nuove features
- Migliorare la documentazione
- Proporre best practices aggiuntive

## 📄 Licenza

MIT License - Sentiti libero di usare questo progetto per le tue demo!

---

**Creato con ❤️ per dimostrare best practices moderne**# bob-demo
