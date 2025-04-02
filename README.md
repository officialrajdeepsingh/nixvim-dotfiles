<h1 align="center">NixVim</h1>

This repository contains my Neovim configuration, which is based on [NixVim](https://github.com/nix-community/nixvim). NixVim is a Neovim configuration system for Nix.

**Configuring/editting**

To start configuring, just add or modify the Nix files in `./config`.

If you add a new configuration file, remember to add it to the [`config/default.nix`](./config/default.nix) file

**Testing your new configuration**

To test your configuration simply run the following command

```sh
nix run .
```

To test the config without first cloning the repo simply run the following command

```sh
nix run github:officialrajdeepsingh/nixvim-dotfiles
```

**Add to flake:**

I have the following in flake.nix

```nix
{
....
inputs = {
  nixvim.url = "github:officialrajdeepsingh/nixvim-dotfiles";
}
....
};
```

And then I have a `packages.nix` file that contains:

```nix
{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [

    ...
    inputs.nixvim.packages.${pkgs.system}.default
  ];
}
```

Or you can always [take a look yourself](https://github.com/officialrajdeepsingh/nixvim-dotfiles)

---

> <https://nix-community.github.io/nixvim/search>

---

## Neovim Plugins

The following plugin is installed in this nixvim configuration.

```markdown
config/plugins/
├── cmp
│   ├── autopairs.nix
│   ├── cmp-copilot.nix
│   ├── cmp.nix
│   ├── lspkind.nix
│   └── schemastore.nix
├── editor
│   ├── copilot-chat.nix
│   ├── illuminate.nix
│   ├── indent-blankline.nix
│   ├── navic.nix
│   ├── neo-tree.nix
│   ├── oil.nix
│   ├── todo-comments.nix
│   ├── treesitter.nix
│   ├── undotree.nix
│   └── yazi.nix
├── git
│   ├── gitsigns.nix
│   └── lazygit.nix
├── lsp
│   ├── conform.nix
│   ├── fidget.nix
│   └── lsp.nix
├── snippets
│   └── luasnip.nix
├── themes
│   └── default.nix
├── ui
│   ├── bufferline.nix
│   ├── lualine.nix
│   └── startup.nix
└── utils
├── extra_plugins.nix
├── markdown-preview.nix
├── mini.nix
├── obsidian.nix
├── telescope.nix
├── toggleterm.nix
├── web-devicons.nix
└── whichkey.nix
```
