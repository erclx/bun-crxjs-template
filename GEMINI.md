# Chrome Extension Template

This project is a comprehensive template for building Chrome Extensions, leveraging a modern web development stack. It is designed to streamline the development of browser extensions with a focus on developer experience, performance, and code quality.

## Project Overview

- **Type**: Chrome Extension Template
- **Technologies**: React, TypeScript, Vite, CRXJS (Vite plugin for Chrome Extension development), Tailwind CSS, Bun (as the package manager and runtime).
- **Purpose**: To provide a robust and easy-to-use starter for creating Chrome extensions, offering pre-configured tools for building UI, managing extension manifest, and enforcing code standards.
- **Key Features**:
  - Separate entry points for popup, side panel, and content scripts.
  - Automated manifest generation via CRXJS.
  - Integrated development tools: ESLint for linting, Prettier for code formatting, Husky for Git hooks, and Commitlint for conventional commit messages.
  - Comprehensive testing setup with Vitest for unit/integration tests and Playwright for end-to-end tests.

## Building and Running

The project uses `Bun` as the package manager. Ensure Bun is installed globally before proceeding.

- **Initial Setup**:
  1.  Clone the repository: `git clone <repo-url> my-extension`
  2.  Navigate to the project directory: `cd my-extension`
  3.  Run the setup script: `bun reset` (this executes `scripts/setup.sh` to clean the template, update metadata, and initialize Git).
- **Install Dependencies**: `bun install`
- **Start Development Server**: `bun dev`
  - This command starts the Vite development server.
  - To load the extension in Chrome:
    1.  Open `chrome://extensions/` in your browser.
    2.  Enable "Developer mode".
    3.  Click "Load unpacked" and select the `dist` directory from your project.
- **Build for Production**: `bun build`
  - Compiles TypeScript and bundles assets for production.
- **Preview Production Build**: `bun preview`

## Development Conventions

### Script Commands

The following `bun` scripts are available for development and maintenance:

- `bun dev`: Starts the development server.
- `bun build`: Builds the project for production.
- `bun preview`: Previews the production build locally.
- `bun prepare`: Runs Husky setup for Git hooks.
- `bun format`: Formats code using Prettier.
- `bun check:format`: Checks code formatting using Prettier.
- `bun lint`: Lints code using ESLint.
- `bun lint:fix`: Lints code and fixes issues using ESLint.
- `bun lint:spell`: Checks spelling across the project using CSpell.
- `bun typecheck`: Runs TypeScript type checking.
- `bun test`: Runs unit/integration tests using Vitest.
- `bun test:ui`: Runs Vitest in UI mode.
- `bun test:coverage`: Runs Vitest and generates code coverage reports.
- `bun test:e2e`: Runs end-to-end tests using Playwright.
- `bun test:e2e:ui`: Runs Playwright in UI mode.
- `bun test:e2e:report`: Shows Playwright test reports.
- `bun check`: Executes `./scripts/verify.sh` for comprehensive checks.
- `bun check:full`: Executes `./scripts/verify.sh` and end-to-end tests.
- `bun clean`: Executes `./scripts/clean.sh` to clean build artifacts.
- `bun update`: Executes `./scripts/update.sh` (likely for dependency updates or similar maintenance).

### Commit Message Format

The project adheres to the Conventional Commits specification.

- **Template**: `<type>(<scope>): <subject>`
- **Casing**: Use 100% lowercase for the entire message.
- **Scope**: Use a directory name or system component (e.g., `scripts`, `popup`, `content`).
- **Limit**: Subjects must be under 72 characters and should not end with a period.

### File Naming Conventions

- TypeScript/TSX files (`**/*.{ts,tsx}`): Filenames should use `KEBAB_CASE`.
- Source folders (`src/**/!(__tests__)`): Folder names (excluding `__tests__` directories) should use `KEBAB_CASE`.

### Core Engineering Principles

(These principles are inherited from the broader AI Toolkit project and guide development within this template.)

- **Zero bloat**: Implement only what you need now.
- **Zero comments**: Code must be self-explanatory.
- **Why over what**: Use comments only to explain intent, not logic.
- **Native first**: Avoid adding dependencies if native platform tools exist.
- **Idempotency**: Ensure scripts are safe to run multiple times.
- **Temporary state**: Store all transient data in `.gemini/.tmp/`.
