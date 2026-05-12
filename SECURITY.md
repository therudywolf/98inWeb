# Security

## Sensitive Data

Do not commit credentials, API keys, private API URLs, local user paths, generated browser-extension injections, logs, or personal files.

Use `config.js` for local settings. It is ignored by git. Keep `config.example.js` safe and generic.

## Reporting

Please report security issues privately through the repository owner's preferred contact channel. Do not open a public issue containing exploitable details or secrets.

## Maintainer Checklist

- Scan staged changes before committing.
- Review `git diff --cached` for accidental local data.
- Rotate any credential that was committed or pushed, even if it is later removed.
