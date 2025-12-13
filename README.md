# React + Vite + CRXJS Template

This template helps you quickly start developing Chrome extensions with React, TypeScript and Vite. It includes the CRXJS Vite plugin for seamless Chrome extension development.

## Using This Template

1. Clone the repository:

```bash
git clone https://github.com/erclx/bun-crxjs-template my-extension
cd my-extension
```

2. Reset the template for your new project:

```bash
bun reset my-extension
```

This will clean the template, update project metadata, and initialize a fresh Git repository.

## Features

- React with TypeScript
- Vite build tool
- CRXJS Vite plugin integration
- Chrome extension manifest configuration
- ESLint and Prettier
- Husky and Commitlint

## Development

1. Start development server:

```bash
bun dev
```

2. Open Chrome and navigate to `chrome://extensions/`, enable "Developer mode", and load the unpacked extension from the `dist` directory.

3. Build for production:

```bash
bun build
```

## Project Structure

- `src/popup/` - Extension popup UI
- `src/sidepanel/` - Extension side panel UI
- `src/content/` - Content scripts
- `manifest.config.ts` - Chrome extension manifest configuration

## Documentation

- [React Documentation](https://reactjs.org/)
- [Vite Documentation](https://vitejs.dev/)
- [CRXJS Documentation](https://crxjs.dev/vite-plugin)

## Chrome Extension Development Notes

- Use `manifest.config.ts` to configure your extension
- The CRXJS plugin automatically handles manifest generation
- Content scripts should be placed in `src/content/`
- Popup UI should be placed in `src/popup/`
- Side panel UI should be placed in `src/sidepanel/`
