# 🐺 Forest OS 98

![Version](https://img.shields.io/badge/version-2.0-blue.svg)
![License](https://img.shields.io/badge/license-AGPL--3.0--only-green.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)

Forest OS 98 is a retro browser desktop experiment inspired by classic Windows 98 interfaces. It is a single-page web application with windows, games, utilities, a virtual file manager, and an optional OpenAI-compatible chat assistant.

AGPL v3 Copyleft applies to reuse, modification, and network deployment of derived versions.

## Features

- Desktop shell with draggable windows, taskbar, start menu, quick launch, system tray, context menus, and a Run dialog.
- Games: FreeCell, Tetris, Minesweeper, Pinball, Snake, Hearts, and Solitaire-style card experiences.
- Utilities: Paint, calculator, terminal, file manager, code editor, crypto toolkit, regex tester, network tools, system monitor, and control panel.
- Optional Wolf GPT chat window using a locally supplied OpenAI-compatible API endpoint.
- Browser-local persistence through `localStorage` and cookies.

## Requirements

- A modern browser with ES6 support.
- A local static file server is recommended. Directly opening `forestos.html` can work for most features, but a server gives browser behavior closer to deployment.

No build step or package manager is required for the current project layout.

## Quick Start

```bash
git clone <repository-url>
cd 98inWeb
python3 -m http.server 8000
```

Open `http://localhost:8000/forestos.html`.

### Docker (optional)

```bash
docker build -t forestos98 .
docker run -p 8080:80 forestos98
```

Open `http://localhost:8080/forestos.html`. The Dockerfile uses nginx:alpine with security headers pre-configured.

## Optional AI Configuration

The chat assistant is disabled until an API endpoint is configured locally.

```bash
cp config.example.js config.js
```

Edit `config.js`:

```javascript
window.FOREST_CONFIG = {
    API_BASE_URL: 'https://your-openai-compatible-endpoint.example',
    MODEL_NAME: 'qwen/qwen3-vl-4b'
};
```

`config.js` is ignored by git and must not be committed. Do not put API keys or private endpoints in tracked files.

## Project Structure

```text
98inWeb/
├── forestos.html       # Main single-file application
├── config.example.js   # Safe local configuration template
├── Dockerfile          # Optional nginx-based container
├── .dockerignore       # Docker build exclusions
├── .gitattributes      # Normalizes text files to LF
├── .gitignore          # Keeps local/private files out of git
├── CONTRIBUTING.md     # Contribution rules
├── SECURITY.md         # Security reporting and secret-handling notes
├── LICENSE             # GNU AGPL v3 text
└── README.md
```

## Development

The app is intentionally monolithic: HTML, CSS, and JavaScript live in `forestos.html`. Keep changes small and easy to inspect.

Recommended local checks before committing:

```bash
git status --short
rg -n -S '(API_KEY|api[_-]?key|token|secret|password|passwd|Authorization|Bearer|github_pat|ghp_|AWSAccessKeyId|X-Amz|amazonaws|kaspersky|/mnt/c/Users|C:/Users|PRIVATE KEY)' .
python3 -m http.server 8000
```

Then open the app in a browser and check the console for runtime errors.

## FOSS Notes

- License: GNU Affero General Public License v3.0 only (`AGPL-3.0-only`).
- Contributions should preserve the public, self-contained nature of the project.
- Local configuration, private API endpoints, generated logs, editor folders, and OS metadata must stay untracked.
- If you distribute a modified network-accessible version, AGPL source-sharing obligations apply.

## License

Copyright (C) 2026 Forest OS 98 contributors.

This project is licensed under the GNU Affero General Public License v3.0 only. See [LICENSE](LICENSE).
