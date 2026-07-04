import js from '@eslint/js'
import globals from 'globals'
import reactHooks from 'eslint-plugin-react-hooks'
import reactRefresh from 'eslint-plugin-react-refresh'
import importPlugin from 'eslint-plugin-import'
import unusedImports from 'eslint-plugin-unused-imports'
import prettier from 'eslint-config-prettier'
import tseslint from 'typescript-eslint'
import { defineConfig, globalIgnores } from 'eslint/config'

export default defineConfig([
  globalIgnores(['dist', 'coverage', 'node_modules']),

  {
    files: ['**/*.{ts,tsx}'],

    extends: [
      js.configs.recommended,
      tseslint.configs.recommended,
      reactHooks.configs.flat.recommended,
      reactRefresh.configs.vite,
      prettier,
    ],

    plugins: {
      import: importPlugin,
      'unused-imports': unusedImports,
    },

    languageOptions: {
      globals: globals.browser,
    },

    rules: {
      /*
       * Imports
       */
      'import/no-duplicates': 'error',

      /*
       * Unused Imports
       */
      'unused-imports/no-unused-imports': 'error',

      'unused-imports/no-unused-vars': [
        'error',
        {
          vars: 'all',
          varsIgnorePattern: '^_',
          args: 'after-used',
          argsIgnorePattern: '^_',
        },
      ],

      /*
       * TypeScript
       */
      '@typescript-eslint/no-explicit-any': 'error',

      /*
       * General
       */
      'no-console': [
        'error',
        {
          allow: ['warn', 'error'],
        },
      ],

      'no-debugger': 'error',

      'prefer-const': 'error',

      eqeqeq: ['error', 'always'],
    },
  },
])
