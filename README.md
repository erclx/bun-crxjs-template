# Chrome Extension Template

This project is a template for building Chrome Extensions. It uses a modern web development stack to simplify browser extension development, emphasizing developer experience, performance, and code quality.

## Features

- Separate entry points for popup, side panel, and content scripts.
- Automated manifest generation via CRXJS.
- Integrated development tools: ESLint, Prettier, Husky (for Git hooks), and Commitlint (for conventional commit messages).
- Testing setup with Vitest (for unit/integration tests) and Playwright (for end-to-end tests).
- React with TypeScript.
- Vite build tool.
- Tailwind CSS v4.

## Getting Started

Use `Bun` as the package manager. Ensure `Bun` is installed globally.

### Initial Setup

Clone the repository with your project name. Then, navigate to the project directory.

```bash
git clone https://github.com/erclx/bun-crxjs-template my-extension
cd my-extension
```

Run the setup script. This cleans the template, updates project metadata, and initializes a fresh Git repository.

```bash
bun run reset
```

### Install Dependencies

```bash
bun run install
```

## Development

### Start Development Server

Run the development server. This command starts the Vite development server.

```bash
bun run dev
```

To load the extension in Chrome:

1. Open `chrome://extensions/` in your browser.
2. Enable "Developer mode".
3. Click "Load unpacked" and select the `dist` directory from your project.

### Build for Production

Build the project for production. This compiles TypeScript and bundles assets.

```bash
bun run build
```

### Preview Production Build

```bash
bun run preview
```

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

## Development Commands

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
- `bun run update`: Executes `./scripts/update.sh` (likely for dependency updates or similar maintenance).

## Documentation

- [React Documentation](https://reactjs.org/)
- [Vite Documentation](https://vitejs.dev/)
- [CRXJS Documentation](https://crxjs.dev/vite-plugin)
- [Tailwind CSS Documentation](https://tailwindcss.com/)

## Support

Report issues on [GitHub Issues](../../issues).

## License

[MIT](LICENSE)
