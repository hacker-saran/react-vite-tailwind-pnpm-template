# Project Structure

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document defines the frontend project structure and explains the responsibility of each directory.

All source code should follow this structure to maintain consistency and simplify long-term maintenance.

---

# Source Directory

```text
src/
├── assets/
├── components/
├── hooks/
├── layouts/
├── pages/
├── services/
├── store/
├── styles/
├── types/
├── utils/
├── App.tsx
├── main.tsx
└── routes.tsx
```

---

# Directory Responsibilities

## assets/

Stores static resources used by the application.

Examples:

- Images
- Icons
- Fonts
- SVGs

Avoid placing application logic inside this directory.

---

## components/

Contains reusable UI components.

Examples:

- Button
- Input
- Modal
- Header
- Sidebar
- Loader

Components should:

- Be reusable.
- Receive data through props.
- Avoid direct backend communication.

---

## hooks/

Contains reusable React hooks.

Examples:

- useAuth
- useDebounce
- useTheme

Hooks should encapsulate reusable React logic.

---

## layouts/

Defines reusable page layouts.

Examples:

- Authentication Layout
- Dashboard Layout

Layouts should control page structure but not business logic.

---

## pages/

Contains application pages.

Each page represents a route within the application.

Examples:

- Login
- Dashboard
- Profile
- Settings

Pages should compose layouts and components while remaining lightweight.

---

## services/

Contains backend communication logic.

Examples:

- API client
- Authentication service
- User service
- Session service

All communication with the FastAPI backend should be implemented here.

---

## store/

Contains global application state.

Only shared application state should be placed here.

Avoid storing local component state in the global store.

---

## styles/

Contains global styling resources.

Examples:

- Global styles
- Tailwind entry file
- Fonts
- Animations

Component-specific styles should remain with the component whenever possible.

---

## types/

Contains shared TypeScript definitions.

Examples:

- Interfaces
- Types
- Enums

Feature-specific types should remain close to the feature unless shared across multiple modules.

---

## utils/

Contains reusable helper functions.

Examples:

- Date formatting
- String utilities
- Validation helpers
- File utilities

Utilities should remain framework independent.

---

# Root Files

## main.tsx

Application entry point.

Responsible for rendering the React application.

---

## App.tsx

Root application component.

Responsible for rendering the application layout.

---

## routes.tsx

Defines application routes.

Centralizes routing configuration.

---

# Naming Conventions

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

Use camelCase prefixed with `use`.

Examples:

```text
useAuth.ts
useDebounce.ts
useTheme.ts
```

---

## Pages

Use PascalCase.

Examples:

```text
Login.tsx
Dashboard.tsx
Profile.tsx
```

---

## Services

Use the `.service.ts` suffix.

Examples:

```text
auth.service.ts
api.service.ts
user.service.ts
```

---

## Types

Group related interfaces and types by domain.

Examples:

```text
auth.ts
user.ts
session.ts
common.ts
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

# Project Guidelines

- Keep directories focused on a single responsibility.
- Reuse existing components whenever possible.
- Avoid creating unnecessary folders.
- Keep related files close together.
- Promote code to reusable directories only when shared by multiple modules.

---

# Extending the Structure

When introducing new functionality:

1. Identify the appropriate directory.
2. Follow the existing naming conventions.
3. Reuse existing code before creating new implementations.
4. Update this document if the project structure changes.

Avoid introducing new top-level directories unless there is a clear architectural requirement.
