# Contributing

Thank you for improving Forest OS 98.

## Rules

- Keep the project runnable as a static site.
- Do not commit local configuration, private endpoints, credentials, tokens, personal files, generated logs, or editor metadata.
- Use `config.example.js` for safe placeholders and keep real values in ignored local files.
- Keep `forestos.html` changes focused and easy to review.
- Preserve the `AGPL-3.0-only` license unless the project maintainers explicitly approve a licensing change.

## Checks

Before opening a pull request or pushing directly, run:

```bash
git status --short
rg -n -S '(API_KEY|api[_-]?key|token|secret|password|passwd|Authorization|Bearer|github_pat|ghp_|AWSAccessKeyId|X-Amz|amazonaws|kaspersky|/mnt/c/Users|C:/Users|PRIVATE KEY)' .
```

Also start a local static server and verify the browser console is clean for the workflow you changed.
