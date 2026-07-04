# Git Workflow

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document defines the Git workflow for the frontend repository.

All contributors should follow this workflow to maintain a clean commit history, consistent development process, and stable release cycle.

---

# Branch Strategy

The repository follows a Git Flow inspired workflow.

```text
main
│
└── develop
      │
      ├── feature/*
      ├── bugfix/*
      ├── hotfix/*
      ├── refactor/*
      ├── docs/*
      ├── chore/*
      ├── test/*
      └── ci/*
```

---

# Branch Responsibilities

## main

- Production-ready code.
- Protected branch.
- No direct commits.
- Updated only through merges from `develop`.

---

## develop

- Primary development branch.
- Base branch for all development work.
- All feature branches originate from `develop`.

---

# Branch Naming

Use the following conventions.

| Branch Type   | Example                   |
| ------------- | ------------------------- |
| Feature       | `feature/authentication`  |
| Bug Fix       | `bugfix/login-validation` |
| Hot Fix       | `hotfix/session-timeout`  |
| Refactor      | `refactor/api-service`    |
| Documentation | `docs/project-structure`  |
| Chore         | `chore/repository-setup`  |
| Test          | `test/auth-service`       |
| CI            | `ci/bitbucket-pipelines`  |

---

# Development Workflow

## Step 1

Update the local repository.

```bash
git checkout develop
git pull origin develop
```

---

## Step 2

Create a new branch.

```bash
git checkout -b feature/your-feature-name
```

---

## Step 3

Implement the required changes.

---

## Step 4

Validate the project.

Ensure the following commands complete successfully.

```bash
pnpm lint
pnpm typecheck
pnpm test
pnpm build
```

---

## Step 5

Commit changes using Conventional Commits.

Examples:

```text
feat(auth): implement login page

fix(<scope>): resolve resource sorting

refactor(api): simplify request handling

docs(project): update frontend architecture

test(auth): add login service tests

chore(repo): configure husky

ci(pipeline): add Bitbucket pipeline
```

---

## Step 6

Push the branch.

```bash
git push origin feature/your-feature-name
```

---

## Step 7

Open a Pull Request targeting `develop`.

---

## Step 8

Merge after:

- Code review approval.
- Successful pipeline execution.
- All quality checks pass.

Delete the branch after merging.

---

# Pull Request Guidelines

Each Pull Request should:

- Address a single logical change.
- Include a clear description.
- Reference related issues when applicable.
- Pass all automated checks.
- Update documentation if required.

Avoid combining unrelated changes in a single Pull Request.

---

# Merge Strategy

Merge feature branches into `develop`.

Merge `develop` into `main` for production releases.

Delete merged branches to keep the repository clean.

---

# Release Workflow

```text
feature/*
        │
        ▼
develop
        │
        ▼
main
        │
        ▼
Production
```

---

# Commit Standards

Follow the Conventional Commits specification.

Supported commit types include:

- feat
- fix
- docs
- refactor
- test
- chore
- ci
- build
- perf
- style
- revert

Example:

```text
feat(<scope>): implement user profile module
```

---

# Branch Protection

The following branches should be protected.

- `main`
- `develop`

Protected branches should:

- Reject direct pushes.
- Require Pull Requests.
- Require successful pipeline execution before merging.

---

# Best Practices

- Keep branches short-lived.
- Commit frequently.
- Write meaningful commit messages.
- Keep Pull Requests focused.
- Rebase or update frequently to reduce merge conflicts.
- Delete merged branches.

---

# Workflow Summary

1. Checkout `develop`.
2. Pull the latest changes.
3. Create a feature branch.
4. Implement changes.
5. Run validation checks.
6. Commit using Conventional Commits.
7. Push the branch.
8. Open a Pull Request.
9. Merge into `develop`.
10. Merge `develop` into `main` during releases.

Following this workflow ensures a consistent and maintainable development process throughout the project.
