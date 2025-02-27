# Neovim Configuration

This repository contains a Neovim configuration setup with various plugins and settings to enhance your development experience. The configuration is tailored for Python development but can be extended for other languages.

## Prerequisites

- **Neovim**: Ensure you have Neovim installed. You can download it from [neovim.io](https://neovim.io/).
- **Python**: Install Python and manage versions using [pyenv](https://github.com/pyenv/pyenv).
- **Node.js**: Required for CoC (Conquer of Completion). Install it from [nodejs.org](https://nodejs.org/) or [NVM](https://github.com/nvm-sh/nvm).
- **Yarn**: Install Yarn for managing JavaScript dependencies. Visit [yarnpkg.com](https://yarnpkg.com/) for installation instructions.

## Installation

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/worosom/nvim-config ~/.config/nvim
   ```

2. **Install Plugins**:

   - Open Neovim and run `:Lazy` to install all plugins using `lazy.nvim`.

3. **Python Environment**:

   - Ensure your Python environment is set up correctly. The configuration uses a specific Python path:
     ```bash
     pyenv install 3.x.x
     pyenv virtualenv 3.x.x nvim
     pyenv activate nvim
     ```

4. **CoC Configuration**:

   - Install CoC extensions by running `:CocInstall coc-python` and any other language servers you need.

5. **Treesitter**:

   - Run `:TSUpdate` to ensure all parsers are up-to-date.

6. **Avante**
   - Configure your API keys in your ~/.zshrc to enable AI-powered features. Refer to the [Avante.nvim documentation](https://github.com/yetone/avante.nvim) for detailed setup instructions and API key configuration.
   - Currently required are `ANTHROPIC_API_KEY` and `TAVILY_API_KEY`

## Key Features

- **Lazy.nvim**: Plugin manager for Neovim.
- **CoC.nvim**: Intellisense engine for Neovim.
- **Treesitter**: Syntax highlighting and code navigation.
- **Avante.nvim**: AI-powered code suggestions and completions.
- **Gitsigns**: Git integration for showing changes in the gutter.
- **Nvim-tree**: File explorer for Neovim.
- **Which-key**: Displays available keybindings in a popup.

## Key Mappings

- **Toggle Nvim Tree**: `<C-n>`
- **Toggle Undo Tree**: `<F5>`
- **Navigate Diagnostics**: `[g` and `]g`
- **Code Navigation**: `gd` (Go to definition), `gr` (References)
- **Format Code**: `<leader>f`
- **Rename Symbol**: `<leader>rn`

## Customization

- **Colorscheme**: The default colorscheme is `nightfox`. You can change it in the `init.lua` file.
- **Plugins**: Add or remove plugins in the `lua/plugins/init.lua` file.
- **Key Mappings**: Customize key mappings in the `coc.lua` and `init.lua` files.

## Troubleshooting

- **Plugin Issues**: Ensure all plugins are installed and up-to-date. Use `:Lazy` to manage plugins.
- **Python Path**: Verify the Python path in `coc-settings.json` matches your environment.
- **Node.js and Yarn**: Ensure both are installed and accessible in your PATH.
