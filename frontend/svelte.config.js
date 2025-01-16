import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

const config = {
  kit: {
    adapter: adapter({
      pages: 'dist', // Output folder for static files
      assets: 'dist',
      fallback: 'index.html', // SPA fallback
    }),
    paths: {
      // If hosting under a subpath, set the base path here (e.g., '/subpath')
      base: '',
    },
  },
}

export default config;
