# Chrome Extension Template

This project is a template for building Chrome Extensions. It uses a modern web development stack to simplify browser extension development, emphasizing developer experience, performance, and code quality.

## Project Overview

- **Type**: Chrome Extension Template
- **Technologies**: React, TypeScript, Vite, CRXJS (Vite plugin for Chrome Extension development), Tailwind CSS, Bun (as the package manager and runtime).
- **Purpose**: Provides a starter for creating Chrome extensions. It includes pre-configured tools for building UI, managing the extension manifest, and enforcing code standards.
- **Key Features**:
  - Separate entry points for popup, side panel, and content scripts.
  - Integrated development tools: ESLint, Prettier, Husky (for Git hooks), and Commitlint (for conventional commit messages).
  - Testing setup with Vitest (for unit/integration tests) and Playwright (for end-to-end tests).

## Project Structure

A concise overview of the primary directories within `src/`:

```
src/
├── background/      # Background service worker scripts
│   └── index.ts
├── content/         # Content scripts that interact with web pages
│   ├── main.tsx
│   └── views/       # React components for content scripts
│       └── app.tsx
├── popup/           # React UI for the extension popup
│   ├── app.tsx
│   ├── index.html
│   └── main.tsx
├── shared/          # Reusable components, hooks, types, and utilities
│   ├── components/
│   ├── hooks/
│   ├── types/
│   └── utils/
│       └── cn.ts
├── sidepanel/       # React UI for the extension side panel
│   ├── app.tsx
│   ├── index.html
│   └── main.tsx
└── test/            # Test setup and smoke tests
    ├── setup.ts
    └── smoke.test.ts
```

## Building and Running

The project uses `Bun` as the package manager. Ensure Bun is installed globally before proceeding.

- **Initial Setup**:
  1. Clone the repository: `git clone <repo-url> my-extension`
  2. Navigate to the project directory: `cd my-extension`
  3. Run the setup script: `bun run reset` (this executes `scripts/setup.sh` to clean the template, update metadata, and initialize Git).
- **Install Dependencies**: `bun run install`
- **Start Development Server**: `bun run dev`
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

The following scripts are available for development and maintenance:

- `bun run dev`: Starts the development server.
- `bun run build`: Builds the project for production.
- `bun run preview`: Previews the production build locally.
- `bun run prepare`: Runs Husky setup for Git hooks.
- `bun run format`: Formats code using Prettier.
- `bun run check:format`: Checks code formatting using Prettier.
- `bun run lint`: Lints code using ESLint.
- `bun run lint:fix`: Lints code and fixes issues using ESLint.
- `bun run lint:spell`: Checks spelling across the project using CSpell.
- `bun run typecheck`: Runs TypeScript type checking.
- `bun run test`: Runs unit/integration tests using Vitest.
- `bun run test:ui`: Runs Vitest in UI mode.
- `bun run test:coverage`: Runs Vitest and generates code coverage reports.
- `bun run test:e2e`: Runs end-to-end tests using Playwright.
- `bun run test:e2e:ui`: Runs Playwright in UI mode.
- `bun run test:e2e:report`: Shows Playwright test reports.
- `bun run check`: Executes `./scripts/verify.sh` for comprehensive checks.
- `bun run check:full`: Executes `./scripts/verify.sh` and end-to-end tests.
- `bun run clean`: Executes `./scripts/clean.sh` to clean build artifacts.
- `bun run update`: Executes `./scripts/update.sh` to update dependencies.
