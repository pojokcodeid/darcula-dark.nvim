# 🧛🏻‍♂️ Darcula Dark for Neovim

The Darcula Dark theme is a Neovim colorscheme that's designed to emulate the popular Darcula color scheme from JetBrains' GoLand IDE. It is ideal for long hours of coding, offering a dark theme that's easy on the eyes. Despite trying various alternatives in Neovim, we found nothing quite matched up, hence we embarked on creating this color scheme ourselves.

![image](https://github.com/xiantang/darcula-dark.nvim/blob/main/img/preview.png?raw=true)

comparing with the original Darcula theme in GoLand:

![image](https://github.com/xiantang/darcula-dark.nvim/blob/main/img/256969805-1d3f86f1-3692-4267-a113-56a76be67e99.png?raw=true)

## Installation

To install this color scheme, add the following to your plugin configuration:

lazy.nvim

```lua
  {
    "pojokcodeid/darcula-dark.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          local colors = require("darcula").colors()
          local hi = vim.api.nvim_set_hl
          hi(0, "@property.json", { fg = colors.lavender })
        end,
      })
    end,
  },
```

packer.nvim

```lua
  use {
    'pojokcodeid/darcula-dark.nvim',
    requires = {"nvim-treesitter/nvim-treesitter"}
  }

```

## Note

For transparent background

- https://github.com/xiyaowong/transparent.nvim

## TODO

- [ ] support Darcula Solid Theme https://plugins.jetbrains.com/plugin/13920-darcula-solid-theme
- [ ] support more plugins

## Supported Plugins

- telescope
- Treesitter
- cmp-nvim
- copilot.vim
- dap.nvim
- eyeline.nvim
- gitsign.nvim
- hop.nvim
- nerdtree.vim
- lspsaga.nvim
- scrollbar.nvim
- lualine.nvim

## Usage

lua

```lua
vim.cmd.colorscheme("darcula-dark")

```

vimscript

```vimscript
colorscheme darcula-dark
```

## Requirements

This color scheme requires Neovim v0.8.3 or higher, as it uses LSP Semantic tokens. It also depends on nvim-treesitter/nvim-treesitter.

## Debug

make sure your true color: https://gist.github.com/andersevenrud/015e61af2fd264371032763d4ed965b6

## Alternatives

- [doums/darcula](https://github.com/doums/darcula)
- [santos-gabriel-dario/darcula-solid.nvim](https://github.com/santos-gabriel-dario/darcula-solid.nvim)

## Credits

- [Darcula Darker Theme from JetBrains](https://plugins.jetbrains.com/plugin/12692-darcula-darker-theme)
- [Neovim Plugin Template by ellisonleao](https://github.com/ellisonleao/nvim-plugin-template)
- [nvim-base16](https://github.com/RRethy/nvim-base16)
