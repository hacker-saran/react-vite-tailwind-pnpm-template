# Setup Guide

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document describes how to set up the frontend development environment.

Follow these steps before contributing to the project.

---

# Prerequisites

Ensure the following software is installed.

- Git
- Node.js (LTS)
- pnpm
- Visual Studio Code (Recommended)

Verify the installation.

```bash
node -v
pnpm -v
git --version
```

---

# Clone Repository

```bash
git clone <repository-url>

cd <repository-name>
```

---

# Install Dependencies

```bash
pnpm install
```

---

# Environment Variables

Create a local environment file.

```text
.env.local
```

Copy values from:

```text
.env.example
```

Update the required environment variables before running the application.

Never commit local environment files.

---

# Start Development Server

```bash
pnpm dev
```

The application will start using the Vite development server.

---

# Available Scripts

## Start Development Server

```bash
pnpm dev
```

---

## Build Production Bundle

```bash
pnpm build
```

---

## Preview Production Build

```bash
pnpm preview
```

---

## Lint

```bash
pnpm lint
```

---

## Format Code

```bash
pnpm format
```

---

## Type Check

```bash
pnpm typecheck
```

---

## Run Tests

```bash
pnpm test
```

---

# Development Workflow

1. Checkout the `develop` branch.
2. Pull the latest changes.
3. Create a feature branch.
4. Implement changes.
5. Run validation scripts.
6. Commit changes.
7. Push the branch.
8. Create a Pull Request.

Refer to:

`docs/development/git-workflow.md`

---

# Validation Checklist

Before committing, ensure:

- Dependencies are installed.
- Project builds successfully.
- No TypeScript errors.
- No ESLint errors.
- Tests pass.
- Code is formatted.

---

# Troubleshooting

## Dependency Issues

Remove installed dependencies and reinstall.

```bash
rm -rf node_modules

pnpm install
```

---

## Lock File Issues

If dependency resolution fails.

```bash
rm pnpm-lock.yaml

pnpm install
```

---

## Development Server Issues

Clear the Vite cache.

```bash
rm -rf node_modules/.vite
```

Restart the development server.

---

## Environment Variable Changes

After modifying environment variables.

Restart the development server.

---

# Repository Documentation

Additional documentation can be found in:

```text
docs/

architecture/
development/
roadmap/
```

Review the documentation before introducing new architectural patterns or repository-wide changes.

---

# Support

If setup issues persist:

1. Verify all prerequisites.
2. Review the troubleshooting section.
3. Check the project documentation.
4. Create an issue if the problem cannot be resolved.
