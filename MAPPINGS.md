# Neovim Key Mappings Reference

This document lists the custom and plugin-specific key mappings configured for this Neovim setup.

## General Mappings
| Key | Action | Description |
|-----|--------|-------------|
| `;`  | `:`    | Enter command mode in Normal mode |
| `jk` | `<ESC>`| Escape Insert mode |

## Navigation (Hop.nvim)
Fast motion and jumping across the buffer.

| Key | Action | Description |
|-----|--------|-------------|
| `<leader><leader>w` | `:HopWord` | Jump to any word on the screen |
| `<leader><leader>j` | `:HopLine` | Jump to any line (downward/any) |
| `<leader><leader>k` | `:HopLine` | Jump to any line (upward/any) |
| `<leader><leader>c` | `:HopChar1`| Jump to any single character |

## Git Workflow (LazyGit)
Integrated Git management.

| Key | Action | Description |
|-----|--------|-------------|
| `<leader>lg` | `:LazyGit` | Open LazyGit floating terminal |

## Laravel (Laravel.nvim)
Laravel-specific integration and pickers.

| Key | Action | Description |
|-----|--------|-------------|
| `<leader>ll` | `Laravel.pickers.laravel()` | Open Laravel Picker |
| `<leader>la` | `Laravel.pickers.artisan()` | Open Artisan Picker |
| `<leader>lr` | `Laravel.pickers.routes()`  | Open Routes Picker |

## Markdown Support
Enhanced editing and previewing for Markdown files.

| Key | Action | Description |
|-----|--------|-------------|
| `<leader>mp` | `:MarkdownPreviewToggle` | Toggle live browser preview |
| `<leader>tm` | `:TableModeToggle`       | Toggle table creation mode |

## UI & Buffers (NvChad Defaults)
These are standard NvChad mappings for reference.

| Key | Action | Description |
|-----|--------|-------------|
| `<tab>`    | Buffer Next | Cycle to the next open buffer |
| `<S-tab>`  | Buffer Prev | Cycle to the previous open buffer |
| `<leader>x`| Close Buffer| Close current buffer |
| `<leader>e`| NvimTree    | Toggle file explorer |
| `<C-n>`    | NvimTree    | Toggle file explorer |
| `<leader>th`| Themes     | Open NvChad theme switcher |

---
*Note: `<leader>` is typically the Space key in NvChad.*
