# Toolchain Notes

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document records toolchain-specific decisions, compatibility notes, and migration considerations for the frontend repository.

Unlike architectural decisions, these notes focus on the development ecosystem and should be updated when introducing new tools or upgrading existing ones.

---

# Current Toolchain

| Category     | Version |
| ------------ | ------- |
| Node.js      | LTS     |
| pnpm         | 10.x    |
| Vite         | 8.x     |
| React        | 19.x    |
| TypeScript   | 6.x     |
| Tailwind CSS | 4.x     |
| ESLint       | 10.x    |
| Prettier     | 3.x     |

---

# TypeScript

## Path Aliases

### Decision

Use the following path alias.

```text
@ → src/
```

### Notes

TypeScript 6 no longer requires `baseUrl` when using `paths`.

Do not configure:

```json
{
  "baseUrl": "."
}
```

Configure only:

```json
{
  "paths": {
    "@/*": ["./src/*"]
  }
}
```

This approach is compatible with the current TypeScript recommendations and avoids future migration issues.

---

# ESLint

## Flat Configuration

The repository uses the ESLint Flat Config format.

Legacy `.eslintrc` configuration files should not be introduced.

---

## Warnings

Linting is configured with:

```text
--max-warnings=0
```

Warnings are treated as build failures.

The repository should remain free of lint warnings.

---

## Plugin Compatibility

Some ESLint plugins may temporarily report peer dependency warnings after new ESLint major releases.

When evaluating such warnings:

- Verify that linting functions correctly.
- Review official plugin compatibility.
- Upgrade plugins when official support becomes available.

Do not downgrade tooling solely because of peer dependency metadata unless functionality is affected.

---

# Tailwind CSS

The project uses Tailwind CSS v4.

Configuration is performed through the official Vite plugin.

Avoid introducing legacy Tailwind configuration files unless required by future project requirements.

---

# Prettier

Formatting responsibilities belong exclusively to Prettier.

Avoid enabling ESLint formatting rules that duplicate Prettier behavior.

---

# Dependency Management

Follow these principles when adding dependencies.

- Prefer official libraries.
- Minimize unnecessary dependencies.
- Evaluate maintenance activity before adoption.
- Keep runtime dependencies separate from development dependencies.

Every new dependency should have a clear justification.

---

# Upgrade Strategy

When upgrading major versions:

1. Review official release notes.
2. Update one major tool at a time.
3. Verify:

   - Build
   - Lint
   - Type checking
   - Tests

4. Update this document if migration steps are required.

---

# Future Notes

Record notable ecosystem changes here.

Examples include:

- Breaking changes
- Deprecated options
- Migration procedures
- Tool compatibility issues
- New repository standards

This document serves as a technical reference for maintaining the repository over time.
