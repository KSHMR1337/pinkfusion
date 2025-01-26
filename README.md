## Pinkfusion, a synthwave inspired vim/neovim theme with focus on pink, red and magenta

This theme was inspired by the theme Aurora, I wanted to create an aurora fork that was focused on pink colorscheme as much as Aurora is on purple.

Feel free to contribute, just open a PR.

Normal mode:

Transparent mode:

### LUA Setup

The theme has a Vimscript and a LUA version, the LUA version will be loaded automatically if the version of Neovim you are using has the support.

#### Example 1

```lua
  -- lazy
   {
    'ray-x/aurora',
    init = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
      vim.g.aurora_bold = 1
    end,
    config = function()
        vim.cmd.colorscheme "aurora"
        -- override defaults
        vim.api.nvim_set_hl(0, '@number', {fg='#e933e3'})
    end
    }
```
#### Example 2

```lua
return {
	"kshmr1337/pinkfusion",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("let g:pinkfusion_transparent = 1")
		vim.cmd("colorscheme pinkfusion")
	end,
}
```
