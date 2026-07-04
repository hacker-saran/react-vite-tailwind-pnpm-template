# Frontend Architecture

**Version:** 1.0
**Status:** Active
**Last Updated:** 2026-06-29

---

## Purpose

This document describes the architectural design of the frontend application. All new features and modifications should align with this architecture to ensure consistency, scalability, and maintainability.

---

# Architecture Style

The frontend follows a **Layered Architecture**.

Each layer has a single responsibility and communicates only with the appropriate adjacent layer.

Business logic, UI rendering, and backend communication should remain clearly separated.

---

# Application Flow

Every user interaction follows the same execution flow.

```text
User
    │
    ▼
Route
    │
    ▼
Page
    │
    ▼
Component
    │
    ▼
Service
    │
    ▼
FastAPI Backend
```

---

# Layer Responsibilities

## Routes

Responsibilities:

- Define application routes.
- Configure navigation.
- Apply route guards when required.
- Render the appropriate page.

Routes should not contain business logic.

---

## Pages

Responsibilities:

- Represent a complete application screen.
- Compose layouts and components.
- Coordinate page-level interactions.

Pages should remain lightweight and avoid implementing reusable UI components.

---

## Components

Responsibilities:

- Render reusable UI elements.
- Receive data through props.
- Emit user interactions.

Components should avoid direct API communication and unnecessary business logic.

---

## Services

Responsibilities:

- Communicate with the FastAPI backend.
- Handle HTTP requests and responses.
- Manage API endpoints.
- Provide reusable backend communication methods.

Services should not contain UI rendering logic.

---

## Hooks

Responsibilities:

- Encapsulate reusable React logic.
- Manage component behavior.
- Reuse stateful functionality across components.

Hooks should remain focused on a single responsibility.

---

## Utilities

Responsibilities:

- Provide reusable helper functions.
- Perform formatting, validation, and common transformations.
- Remain framework independent whenever possible.

Utilities should not depend on React components or application state.

---

## Types

Responsibilities:

- Define shared TypeScript types.
- Define interfaces.
- Define enums.
- Define reusable data models.

Feature-specific types should remain close to their respective implementations whenever practical.

---

## Styles

Responsibilities:

- Define global application styles.
- Configure typography.
- Configure animations.
- Manage shared styling resources.

Component-specific styling should remain with the component whenever possible.

---

# Backend Communication

All communication with backend services must be performed through the `services/` layer.

Components and pages should never communicate directly with backend APIs.

This ensures consistent request handling, centralized error management, and improved maintainability.

---

# State Management

Application state should remain as close as possible to where it is used.

Global state should only be introduced when data must be shared across multiple parts of the application.

Avoid unnecessary global state.

---

# Design Principles

- Keep components reusable.
- Keep pages lightweight.
- Separate UI from backend communication.
- Minimize code duplication.
- Prefer composition over inheritance.
- Maintain strong type safety.
- Keep the project structure simple and predictable.

---

# Extending the Architecture

When adding new functionality:

1. Create or update the appropriate page.
2. Build reusable components when necessary.
3. Add backend communication through the `services/` layer.
4. Define shared types when required.
5. Reuse existing utilities before creating new ones.
6. Update documentation if architectural changes are introduced.

Avoid introducing new architectural patterns unless there is a clear and documented justification.
