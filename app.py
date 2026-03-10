from flask import Flask, render_template
import os

app = Flask(__name__)


@app.route("/")
def home():
    """Homepage con informazioni sul team"""
    team_info = {
        "project_name": "Bob Demo Project",
        "description": "Demo application per mostrare best practices moderne",
        "roles": [
            {
                "name": "Developers",
                "icon": "💻",
                "description": "Clean code, testing, API design",
            },
            {
                "name": "DevOps",
                "icon": "🚀",
                "description": "Docker, CI/CD, Infrastructure as Code",
            },
            {
                "name": "Security",
                "icon": "🔒",
                "description": "Vulnerability scanning, secure coding",
            },
        ],
        "tech_stack": ["Python", "Flask", "Docker", "uv"],
    }
    return render_template("index.html", **team_info)


@app.route("/health")
def health():
    """Health check endpoint"""
    return {"status": "healthy", "version": "1.0.0"}, 200


if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port, debug=False)

# Made with Bob
