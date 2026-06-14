# Contributing

Thanks for taking an interest in Arkilia Linux.

This project is a personal Arch-based live ISO profile that is slowly becoming more public. Contributions are welcome, especially when they keep the system understandable, useful, and easy to rebuild.

## Good Contributions

- Package list improvements.
- Fixes for live ISO boot issues.
- Better desktop defaults.
- Documentation updates.
- Small cleanup changes that make the profile easier to maintain.

## Before Opening a Pull Request

1. Keep changes focused.
2. Explain why the change belongs in Arkilia Linux.
3. Mention whether you tested the ISO build or only checked the files.
4. Avoid unrelated formatting churn.

## Building Locally

Install `archiso`, then run from the repository root:

```bash
sudo mkarchiso -v .
```

If the build fails, include the relevant error output when opening an issue or pull request.

## Reporting Issues

When reporting a problem, include:

- What you expected to happen.
- What actually happened.
- Whether it happened during build, boot, login, or desktop startup.
- Hardware or VM details if relevant.
- Logs or screenshots when they help explain the issue.

## Style

Keep configuration simple and readable. Arkilia Linux should stay easy to inspect and modify, even as it grows.
