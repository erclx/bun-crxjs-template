# Chrome Extension Template

A Chrome extension starter built with React, TypeScript, Vite, and CRXJS.

## Using This Template

1. Clone the repository with your project name:

```bash
git clone https://github.com/erclx/bun-crxjs-template my-extension
cd my-extension
```

2. Reset the template (auto-detects project name from folder):

```bash
bun reset
```

This will clean the template, update project metadata, and initialize a fresh Git repository.

## Features

- React with TypeScript
- Vite build tool
- CRXJS Vite plugin integration
- Chrome extension manifest configuration
- ESLint and Prettier
- Husky and Commitlint
- Tailwind CSS v4

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
- [Tailwind CSS Documentation](https://tailwindcss.com/)

## Chrome Extension Development Notes

- Use `manifest.config.ts` to configure your extension
- The CRXJS plugin automatically handles manifest generation
- Content scripts should be placed in `src/content/`
- Popup UI should be placed in `src/popup/`
- Side panel UI should be placed in `src/sidepanel/`
