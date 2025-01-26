## Pinkfusion, a synthwave inspired vim/neovim theme with focus on pink, red and magenta

This theme was inspired by the theme [Aurora](https://github.com/ray-x/aurora), I wanted to create an aurora fork that was focused on pink colorscheme as much as Aurora is on purple.

Feel free to contribute, just open a PR.

Normal mode:

![image](https://github.com/user-attachments/assets/22ada01f-387e-4578-86fa-8cc1ff8e5189)

Transparent mode:

![image](https://github.com/user-attachments/assets/a08228be-a2a9-4e5a-a7fb-4cf79e20f5b5)

### LUA Setup

The theme has a Vimscript and a LUA version, the LUA version will be loaded automatically if the version of Neovim you are using has the support.

#### Example 1

```lua
  -- lazy
   {
    'kshmr1337/pinkfusion',
    init = function()
      vim.g.aurora_italic = 1
      vim.g.aurora_transparent = 1
      vim.g.aurora_bold = 1
    end,
    config = function()
        vim.cmd.colorscheme "pinkfusion"
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
