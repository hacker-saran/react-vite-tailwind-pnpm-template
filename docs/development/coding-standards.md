# Coding Standards

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document defines the coding standards for the frontend repository.

All contributors should follow these guidelines to maintain a consistent, readable, and maintainable codebase.

---

# General Principles

- Write readable code over clever code.
- Prefer simplicity over unnecessary abstraction.
- Keep files focused on a single responsibility.
- Reuse existing implementations before creating new ones.
- Maintain consistency throughout the project.

---

# TypeScript Standards

- Use TypeScript for all source files.
- Enable strict type checking.
- Avoid using `any`.
- Prefer explicit types for public APIs.
- Use interfaces and types appropriately.
- Keep shared types inside `types/`.

---

# React Standards

## Components

- Keep components small and focused.
- Prefer functional components.
- Use props for communication.
- Avoid unnecessary re-renders.
- Avoid deeply nested component trees.

---

## Pages

Pages should:

- Represent a complete route.
- Compose layouts and components.
- Delegate backend communication to services.

Pages should not become large containers of business logic.

---

## Hooks

Hooks should:

- Encapsulate reusable React logic.
- Follow the `use` naming convention.
- Have a single responsibility.
- Avoid unrelated side effects.

---

# Services

Services are responsible for backend communication.

Services should:

- Handle API requests.
- Handle API responses.
- Centralize endpoint definitions.
- Avoid UI-specific logic.

Components should never call backend APIs directly.

---

# State Management

- Keep state as close as possible to where it is used.
- Use local component state whenever practical.
- Introduce global state only when necessary.
- Avoid storing derived state.

---

# File Naming

Use descriptive names.

## Components

Use PascalCase.

Examples:

```text
LoginForm.tsx
UserProfile.tsx
Sidebar.tsx
```

---

## Hooks

Use camelCase beginning with `use`.

Examples:

```text
useAuth.ts
useTheme.ts
useDebounce.ts
```

---

## Services

Use the `.service.ts` suffix.

Examples:

```text
auth.service.ts
user.service.ts
session.service.ts
```

---

## Utilities

Use descriptive names.

Examples:

```text
date.ts
validation.ts
string.ts
file.ts
```

---

## Types

Group related definitions by domain.

Examples:

```text
auth.ts
user.ts
common.ts
session.ts
```

---

# Import Order

Maintain the following import order.

1. React
2. Third-party packages
3. Application services
4. Components
5. Hooks
6. Types
7. Utilities
8. Styles

Separate each group with a blank line.

---

# Styling

- Use Tailwind CSS as the primary styling solution.
- Avoid inline styles unless required.
- Keep utility classes readable.
- Extract reusable UI into components instead of duplicating styles.

---

# Error Handling

- Handle expected errors gracefully.
- Avoid empty `catch` blocks.
- Display meaningful error messages to users when appropriate.
- Log unexpected errors for debugging.

---

# Comments

Write self-explanatory code.

Use comments only when they provide additional context that cannot be understood from the code itself.

Avoid redundant comments.

---

# Constants

Avoid hardcoded values.

Store reusable constants in appropriate files.

Examples:

- API endpoints
- Route names
- Configuration values

---

# Code Organization

Before creating new code:

1. Check for an existing implementation.
2. Reuse components where appropriate.
3. Reuse services when possible.
4. Keep related code together.
5. Avoid duplicate implementations.

---

# Quality Checklist

Before committing code, verify that:

- Code builds successfully.
- No TypeScript errors exist.
- Linting passes.
- Formatting is correct.
- Tests pass.
- Unused imports are removed.
- Dead code is removed.

---

# Prohibited Practices

Avoid:

- Using `any` without justification.
- Large components with multiple responsibilities.
- Duplicate code.
- Direct backend calls from components.
- Unused files and imports.
- Commented-out code.
- Hardcoded secrets or environment values.

---

# Maintaining Standards

Coding standards should evolve with the project.

Updates to this document should be made only when introducing repository-wide conventions or engineering practices.
