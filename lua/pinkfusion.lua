-- stylua: ignore

-- https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f#commitcomment-87014462
local hl = function(group, opts)
  -- opts.default = true
  vim.api.nvim_set_hl(0, group, opts)
end
vim = vim or {}

--stylua: ignore start
local ct = {
  white = '#f8c1d7',
  text = '#f1c6cf',
  textdark = '#d2a0b5',
  bright = '#f6c9d9',
  fg = '#f1b6b1',
  fg1 = '#f39fb7',
  fg2 = '#e68996',
  fg3 = '#e06273',
  fg4 = '#b95565',

  black = '#070510',
  dark = '#141020',
  neardark = '#1a1926',
  neardarkb = '#5c3a54',
  neardark2 = '#5d233c',
  neardark3 = '#7c2b45',
  neardark4 = '#7c3c51',
  neardark5 = '#9d2b60',
  neardark6 = '#9d385a',
  neardark7 = '#b24072',

  gray = '#d4847f',

  magenta1 = '#f9d8e1',
  magenta2 = '#f3aad3',
  magenta3 = '#f17fc3',
  magenta4 = '#e854a2',
  magenta5 = '#d7318b',
  magenta6 = '#d11f79',
  magenta7 = '#c30f6a',
  magenta8 = '#b1005b',

  red = '#f1609a',
  red1 = '#f44f80',
  red2 = '#f62e65',
  red3 = '#f13e72',
  red4 = '#d90061',
  red5 = '#cc0066',
  red6 = '#e20072',
  red7 = '#e23b6f',
  red8 = '#e71a6f',
  red9 = '#f21f77',
  reda = '#f15f8b',
  redb = '#f60080',
  redc = '#f94c92',
  redd = '#f8408b',
  rede = '#f65d81',
  redf = '#f74274',
  redg = '#f84a83',

  gray1 = '#4b1a29',
  gray2 = '#6b2536',
  gray3 = '#7f2f44',
  gray4 = '#9b3751',
  gray5 = '#b73f5a',
  gray6 = '#cf4b65',
  gray7 = '#e25a71',
  graya = '#f16c6e',
  grayb = '#f5787a',
  graye = '#f6927e',
  warmgray = '#e36b7b',
  darkgray = '#3c1b2d',
  grayaf = '#f06072',

  purple = '#f8b2ce',
  purple0 = '#f59fc5',
  purple1 = '#f470b8',
  purple2 = '#e3568f',
  purple3 = '#df2e72',
  purple4 = '#b63d80',
  purple5 = '#db5b8f',
  purple6 = '#c56b8c',
  darkpurple = '#9f2162',
  darkpurple2 = '#7e1650',

  pink = '#fc3979',
  pinkpop = '#ff2a6e',
  cyan = '#f3c5cb',
  br_cyan = '#f56da0',
  br_white = '#ffb4c4',
  background = '#5a102f',

  crimson = '#DC143C',
  violet = '#EE82EE',
  emerald = '#50c878',

  pink0 = '#ff88bb',
  pink1 = '#fa7dbb',
  pink2 = '#fa7bbd',
  pink3 = '#fd75e0',
  pink4 = '#9d285d',
  pink5 = '#bf3978',
  pink6 = '#f76a9b',
  pink7 = '#c84c88',
  pink8 = '#e13679',
  pink9 = '#f62872',
}

local link_ts_v8 = function(bg)
  vim.api.nvim_set_hl(0, 'TSParameterReference', { fg = ct.cyan, bg = bg, ctermfg = 158, ctermbg = 'NONE', bold = true })
  vim.api.nvim_set_hl(0, 'TSDefinitionUsage', { fg = ct.red6, ctermfg = 186 })
  vim.api.nvim_set_hl(0, 'TSDefinition', { link = 'Define' })
  vim.api.nvim_set_hl(0, 'TSCurrentScope', { bg = bg, ctermbg = 234, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@annotation', { fg = ct.pink, ctermfg = 111 })
  vim.api.nvim_set_hl(0, '@attribute', { fg = ct.purple2, ctermfg = 116 })
  vim.api.nvim_set_hl(0, '@comment', { link = 'Comment' })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = ct.white, bg = bg, ctermfg = 189, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = ct.br_pink, ctermfg = 110, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@punctuation.spectial', { fg = ct.br_red, bg = bg, ctermfg = 185, ctermbg = 'NONE' })
  vim.api.nvim_set_hl(0, '@constant', { link = 'Constant' })
  vim.api.nvim_set_hl(0, '@constant.builtin', { fg = ct.red4, ctermfg = 167, italic = (vim.g.pinkfusion_italic == 1) })
  vim.api.nvim_set_hl(0, '@constant.macro', { fg = ct.red3, ctermfg = 197 })
  vim.api.nvim_set_hl(0, '@string', { link = 'String' })
  vim.api.nvim_set_hl(0, '@string.regex', { fg = ct.purple2, ctermfg = 116 })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = ct.cyan, ctermfg = 158 })
  vim.api.nvim_set_hl(0, '@string.special', { fg = ct.pink2, ctermfg = 158 })
  vim.api.nvim_set_hl(0, '@number', { link = 'Number' })
  vim.api.nvim_set_hl(0, '@boolean', { link = 'Boolean' })
  vim.api.nvim_set_hl(0, '@float', { link = 'Float' })
  vim.api.nvim_set_hl(0, '@field', { fg = ct.purple2, ctermfg = 134 })
  vim.api.nvim_set_hl(0, '@type', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = ct.magenta2, ctermfg = 221, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@type.qualifier', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@type.definition', { link = 'Typedef' })
  vim.api.nvim_set_hl(0, '@property', { link = '@field' })
  vim.api.nvim_set_hl(0, '@parameter', { fg = ct.red2, ctermfg = 229 })
  vim.api.nvim_set_hl(0, '@constructor', { fg = ct.pink3, ctermfg = 68, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@function', { fg = ct.pink8, ctermfg = 81, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = ct.purple3, ctermfg = 148, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = ct.pinkpop, ctermfg = 38, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@function.macro', { fg = ct.purple, ctermfg = 141, bold = (vim.g.pinkfusion_bold == 1) })

  vim.api.nvim_set_hl(0, '@keyword', { link = 'Keyword' })
  vim.api.nvim_set_hl(0, '@keyword.function', { fg = ct.pinkpop, ctermfg = 38, bold = (vim.g.pinkfusion_bold == 1) })

  vim.api.nvim_set_hl(0, '@keyword.operator', { fg = ct.pink1, ctermfg = 38, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = ct.pink6, ctermfg = 38, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@keyword.coroutine', { fg = ct.pink2, ctermfg = 38, bold = (vim.g.pinkfusion_bold == 1) })

  vim.api.nvim_set_hl(0, '@parameter.reference', { fg = ct.cyan, bg = bg, ctermfg = 158, bold = true })
  vim.api.nvim_set_hl(0, '@method', { link = 'Function' })
  vim.api.nvim_set_hl(0, '@method.call', { fg = ct.pink8, ctermfg = 81 })
  vim.api.nvim_set_hl(0, '@conditional', { fg = ct.violet, ctermfg = 213, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@repeat', { link = 'Repeat' })
  vim.api.nvim_set_hl(0, '@exception', { fg = ct.red, ctermfg = 204, italic = (vim.g.pinkfusion_italic == 1) })
  vim.api.nvim_set_hl(0, '@label', { link = 'Label' })
  vim.api.nvim_set_hl(0, '@operator', { link = 'Operator' })
  vim.api.nvim_set_hl(0, '@structure', { link = 'Structure' })
  vim.api.nvim_set_hl(0, '@include', { link = 'Include' })
  vim.api.nvim_set_hl(0, '@tag', { link = 'Tag' })
  vim.api.nvim_set_hl(0, '@tag.delimiter', { link = 'Delimiter' })
  vim.api.nvim_set_hl(0, '@tag.attribute', { link = 'Structure' })
  vim.api.nvim_set_hl(0, '@variable', { link = 'Identifier' })
  vim.api.nvim_set_hl(0, '@variable.builtin', { fg = ct.magenta, ctermfg = 208 })
  vim.api.nvim_set_hl(0, '@definition.usage', { fg = ct.red6, ctermfg = 186 })
  vim.api.nvim_set_hl(0, '@definition', { link = 'Define' })
  vim.api.nvim_set_hl(0, '@strong', { fg = ct.red7, ctermfg = 180, bold = (vim.g.pinkfusion_bold == 1) })
  vim.api.nvim_set_hl(0, '@emphasis', { fg = ct.red3, ctermfg = 228, bold = (vim.g.pinkfusion_bold == 1), undercurl = true, italic = (vim.g.pinkfusion_italic == 1)})
  vim.api.nvim_set_hl(0, '@underline', { fg = ct.red, ctermfg = 222, undercurl = true })
  vim.api.nvim_set_hl(0, '@title', { link = 'SpecialKey' })
  vim.api.nvim_set_hl(0, '@literal', { fg = ct.text, ctermfg = 187 })
  vim.api.nvim_set_hl(0, '@identifier', { fg = ct.text, ctermfg = 187, bold = (vim.g.pinkfusion_bold == 1) })

  vim.api.nvim_set_hl(0, '@character', { fg = ct.magenta2, ctermfg = 221 })
  vim.api.nvim_set_hl(0, '@character.special', { link = 'SpecialChar' })

  -- Text {{{
  vim.api.nvim_set_hl(0, '@text', { link = 'Normal' })
  vim.api.nvim_set_hl(0, '@text.strong', { bold = true })
  vim.api.nvim_set_hl(0, '@text.emphasis', { italic = (vim.g.pinkfusion_italic == 1), bold = (vim.g.pinkfusion_bold == true) })
  vim.api.nvim_set_hl(0, '@text.underline', { underline = true })
  vim.api.nvim_set_hl(0, '@text.strike', { strikethrough = true })
  vim.api.nvim_set_hl(0, '@text.title', { link = 'Title' })
  vim.api.nvim_set_hl(0, '@text.literal', { link = 'String' })
  vim.api.nvim_set_hl(0, '@text.uri', { link = 'Underlined' })
  vim.api.nvim_set_hl(0, '@text.math', { link = 'Special' })
  vim.api.nvim_set_hl(0, '@text.environment', { link = 'Macro' })
  vim.api.nvim_set_hl(0, '@text.environment.name', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@text.reference', { link = 'Constant' })

  vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
  vim.api.nvim_set_hl(0, '@text.note', { link = 'SpecialComment' })
  vim.api.nvim_set_hl(0, '@text.warning', { link = 'WarningMsg' })
  vim.api.nvim_set_hl(0, '@text.danger', { link = 'ErrorMsg' })
end

local lsp_v9 = function(bg)
  vim.api.nvim_set_hl(0, '@lsp.type.modifier', { link = 'Special' })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@field' })
  vim.api.nvim_set_hl(0, '@lsp.typemod.function.defaultLibrary', { link = 'Include' })
  vim.api.nvim_set_hl(0, '@lsp.typemod.variable.readonly', { link = '@constant' })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { link = '@variable' })
  vim.api.nvim_set_hl(0, '@lsp.typemod.function.defaultLibrary', { link = 'Special' })

  vim.api.nvim_set_hl(0, "@lsp.type.boolean", { link = "@boolean" })
  vim.api.nvim_set_hl(0, "@lsp.type.builtinType", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.comment", { link = "@comment" })
  vim.api.nvim_set_hl(0, "@lsp.type.decorator", { link = "@attribute" })
  vim.api.nvim_set_hl(0, "@lsp.type.deriveHelper", { link = "@attribute" })
  vim.api.nvim_set_hl(0, "@lsp.type.enum", { link = "@type" })
  vim.api.nvim_set_hl(0, "@lsp.type.enumMember", { link = "@constant" })
  vim.api.nvim_set_hl(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
  vim.api.nvim_set_hl(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
  vim.api.nvim_set_hl(0, "@lsp.type.generic", { link = "@variable" })
  vim.api.nvim_set_hl(0, '@lsp.type.interface', { link = 'Identifier' })
  vim.api.nvim_set_hl(0, "@lsp.type.keyword", { link = "@keyword" })
  vim.api.nvim_set_hl(0, "@lsp.type.lifetime", { link = "@storageclass" })
  vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "@namespace" })
  vim.api.nvim_set_hl(0, "@lsp.type.number", { link = "@number" })
  vim.api.nvim_set_hl(0, "@lsp.type.operator", { link = "@operator" })
  vim.api.nvim_set_hl(0, "@lsp.type.parameter", { link = "@parameter" })
  vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "@property" })
  vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.selfTypeKeyword", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.type.string", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.type.typeAlias", { link = "@type.definition" })
  vim.api.nvim_set_hl(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = ct.red })
  vim.api.nvim_set_hl(0, "@lsp.type.variable", { link = '@variable' })
  vim.api.nvim_set_hl(0, "@lsp.typemod.class.defaultLibrary", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.function.defaultLibrary", { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.async", { link = "@keyword.coroutine" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.macro.defaultLibrary", { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.method.defaultLibrary", { link = "@function.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.operator.injected", { link = "@operator" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.string.injected", { link = "@string" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.type.defaultLibrary", { link = 'Include' })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.callable", { link = "@function" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.injected", { link = "@variable" })
  vim.api.nvim_set_hl(0, "@lsp.typemod.variable.static", { link = "@constant" })

  vim.api.nvim_set_hl(0, '@markup', { link = '@none' })
  vim.api.nvim_set_hl(0, '@markup.list', { fg = ct.pink }) -- For special punctutation that does not fall in the catagories before)
  vim.api.nvim_set_hl(0, '@markup.list.markdown', { fg = ct.magenta, bold = true })
  vim.api.nvim_set_hl(0, '@markup.link.url', { link = 'Underlined' })
  vim.api.nvim_set_hl(0, '@markup.link.label', { link = 'SpecialChar' })
  vim.api.nvim_set_hl(0, '@markup.link.label.symbol', { link = 'Identifier' })
  vim.api.nvim_set_hl(0, '@markup.environment', { link = 'Macro' })
  vim.api.nvim_set_hl(0, '@markup.environment.name', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@markup.raw', { link = 'String' })
  vim.api.nvim_set_hl(0, '@markup.math', { link = 'Special' })
  vim.api.nvim_set_hl(0, '@markup.strong', { bold = true })
  vim.api.nvim_set_hl(0, '@markup.emphasis', { italic = (vim.g.pinkfusion_italic == 1) })
  vim.api.nvim_set_hl(0, '@markup.strikethrough', { strikethrough = true })
  vim.api.nvim_set_hl(0, '@markup.underline', { underline = true })
  vim.api.nvim_set_hl(0, '@markup.heading', { link = 'Title' })

end

return {
  colorscheme = function()
    local bg = ct.neardark2
    local bg2 = ct.neardark3
    local bgfl = ct.neardark
    local bg3 = ct.neardark
    local bg4 = ct.dark

    if not vim.g.pinkfusion_transparent and vim.g.pinkfusion_darker then
      bg = ct.black
      bg2 = ct.neardark
      bgfl = ct.neardark
      bg3 = '#101020'
      bg4 = '#040410'
    end

    if vim.g.pinkfusion_transparent then
      bg = 'NONE'
      bg2 = 'NONE'
      bg3 = 'NONE'
      bg4 = 'NONE'
    end
    local function load_basic()
      vim.api.nvim_set_hl(0, 'Normal', { fg = ct.bright, bg = bg, ctermfg = 189, ctermbg = 234 })
      vim.api.nvim_set_hl(
        0,
        'NormalFloat',
        { fg = ct.text, bg = bgfl, ctermfg = 187, ctermbg = 236, blend = 20 }
      )
      vim.api.nvim_set_hl(0, 'NormalNC', { fg = ct.fg, bg = bg2, ctermfg = 146, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'FloatBorder', { fg = ct.pink1, bg = bg2, ctermfg = 80, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'LineNr', { fg = ct.pinkpop, bg = bg, ctermfg = 239, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = ct.redg, bg = bg, ctermfg = 239, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'LineNrBelow', { link = 'LineNrAbove' })
      vim.api.nvim_set_hl(0, 'CursorLine', { fg = 'NONE', bg = bgfl, ctermfg = 'NONE', ctermbg = 236, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'CursorLineNr', {
        fg = ct.purple0,
        bg = bg3,
        ctermfg = 34,
        ctermbg = 234,
        underline = false,
        bold = (vim.g.pinkfusion_bold == 1),
      })
      vim.api.nvim_set_hl(0, 'ColorColumn', { fg = 'NONE', bg = ct.gray2, ctermfg = 'NONE', ctermbg = 235 })
      vim.api.nvim_set_hl(0, 'ScrollView', { fg = ct.pink4, bg = ct.pink4 })
      vim.api.nvim_set_hl(0, 'Cursor', { bg = ct.bright, ctermbg = 189 })
      vim.api.nvim_set_hl(0, 'CursorIM', { fg = ct.bright, bg = ct.pink, ctermfg = 189, ctermbg = 66 })
      vim.api.nvim_set_hl(0, 'CursorColumn', { bg = ct.neardark4, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'Directory', { fg = ct.pink, ctermfg = 111 })
      vim.api.nvim_set_hl(0, 'DiffAdd', { fg = ct.purple4, bg = ct.dimpurple, ctermfg = 'NONE', ctermbg = 239, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'DiffChange', { fg = ct.red1, bg = ct.neardark3, ctermfg = 'NONE', ctermbg = 236, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'DiffDelete', { fg = ct.gray, bg = ct.neardark3, ctermfg = 'NONE', ctermbg = 239 })
      vim.api.nvim_set_hl(0, 'DiffText', { link = 'WarningMsg' })
      vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = ct.crimson, bg = bg, ctermfg = 161, undercurl = true, sp = ct.red, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'VertSplit', { fg = ct.gray7, ctermfg = 243 })
      vim.api.nvim_set_hl(0, 'WinSeparator', { link = 'VertSplit' })
      vim.api.nvim_set_hl(0, 'Folded', { fg = ct.gray7, bg = bg4, ctermfg = 243, ctermbg = 233 })
      vim.api.nvim_set_hl(0, 'FoldColumn', { fg = ct.pink9, bg = bg, ctermfg = 236, ctermbg = 233 })
      vim.api.nvim_set_hl(0, 'SignColumn', { fg = 'NONE', bg = bg3, ctermfg = 'NONE', ctermbg = 233 })
      vim.api.nvim_set_hl(0, 'IncSearch', { fg = 'NONE', bg = ct.darkpurple, ctermfg = 'NONE', ctermbg = 54, sp = ct.white, bold = (vim.g.pinkfusion_bold == 1), underdashed = true, italic = (vim.g.pinkfusion_italic == 1)})
      vim.api.nvim_set_hl(0, 'Substitute', { link = 'Search' } )
      vim.api.nvim_set_hl(0, 'MatchParen', { fg = ct.violet, ctermfg = 213, ctermbg = 'NONE', sp = ct.br_red, bold = (vim.g.pinkfusion_bold == 1), underdouble = true})
      vim.api.nvim_set_hl(0, 'Search', { fg = 'NONE', bg = ct.neardark4, ctermfg = 'NONE', sp = ct.violet, bold = (vim.g.pinkfusion_bold == 1), underdotted = true, italic = (vim.g.pinkfusion_italic == 1)})
      if vim.fn.has('nvim-0.9') then
        lsp_v9(bg)
      end
      vim.api.nvim_set_hl(0, 'CurSearch', { link = 'Search' })
      vim.api.nvim_set_hl(0, 'ModeMsg', { fg = ct.purplea, bg = bg, ctermfg = 112, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'MoreMsg', { fg = ct.graya, bg = bg, ctermfg = 146, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NonText', { fg = ct.gray4, ctermfg = 239 })
      vim.api.nvim_set_hl(0, 'PMenu', { fg = ct.fg2, bg = bg3, ctermfg = 103, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'PMenuKind', { fg = ct.purple6, bg = bg3, ctermfg = 103, ctermbg = 232 })
      vim.api.nvim_set_hl(0, 'PMenuExtra', { fg = ct.pinkb, bg = bg3, ctermfg = 103, ctermbg = 232 })
      vim.api.nvim_set_hl(0, 'PMenuSel', { fg = ct.white, bg = ct.neardark5, ctermfg = 189, ctermbg = 238, bold = (vim.g.pinkfusion_bold == 1), italic = (vim.g.pinkfusion_italic == 1)})
      vim.api.nvim_set_hl(0, 'PmenuSbar', { fg = 'NONE', bg = ct.gray4, ctermfg = 'NONE', ctermbg = 239 })
      vim.api.nvim_set_hl(0, 'PmenuThumb', { fg = 'NONE', bg = ct.graya, ctermfg = 'NONE', ctermbg = 146 })
      vim.api.nvim_set_hl(0, 'MsgArea', { fg = ct.pink0, bg = bg, ctermfg = 218, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'Question', { fg = ct.pink3, bg = bg, ctermfg = 68, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'SpecialKey', { fg = ct.red, ctermfg = 222 })
      vim.api.nvim_set_hl(0, 'SpellBad', { fg = ct.red5, bg = bg, ctermfg = 130, ctermbg = 'NONE', sp = ct.red5, undercurl = true})
      vim.api.nvim_set_hl(0, 'SpellCap', { fg = ct.pink2, bg = bg, ctermfg = 74, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'SpellRare', { fg = ct.purple4, bg = bg, ctermfg = 114, ctermbg = 'NONE', sp = ct.purple, undercurl = true})
      vim.api.nvim_set_hl(0, 'Rare', { link = 'SpellRare' })
      vim.api.nvim_set_hl(0, 'StatusLine', { fg = ct.bright, bg = ct.neardark5, ctermfg = 189, ctermbg = 238 })
      vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = ct.gray7, bg = ct.neardark4, ctermfg = 243, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'TabLine', { fg = ct.pink8, bg = bg, ctermfg = 110, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TabLineFill', { fg = ct.gray3, bg = bg, ctermfg = 236, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'TabLineSel', { fg = ct.pink9, bg = bg, ctermfg = 39, ctermbg = 'NONE', underline = true })
      vim.api.nvim_set_hl(0, 'Title', { fg = ct.pink10, ctermfg = 111, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'Visual', { bg = ct.neardark6, ctermbg = 239 })
      vim.api.nvim_set_hl(0, 'VisualNOS', { fg = ct.gray, bg = bg, ctermfg = 243, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'WarningMsg', { sp = ct.red7, undercurl = true })
      vim.api.nvim_set_hl(0, 'WildMenu', { fg = ct.gray7, bg = bg, ctermfg = 243, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = ct.gray4, bg = bg3, ctermfg = 239, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'Comment', { fg = ct.pink7, ctermfg = 247, italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Constant', { fg = ct.red1, ctermfg = 229 })
      vim.api.nvim_set_hl(0, 'String', { fg = ct.purple5, ctermfg = 35 })
      vim.api.nvim_set_hl(0, 'Character', { fg = ct.purple, bg = bg, ctermfg = 141, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Boolean', { fg = ct.red8, ctermfg = 203, italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Number', { fg = ct.magenta, ctermfg = 208 })
      vim.api.nvim_set_hl(0, 'Float', { fg = ct.red3, ctermfg = 197 })
      vim.api.nvim_set_hl(0, 'Identifier', { fg = ct.white, ctermfg = 189 })
      vim.api.nvim_set_hl(0, 'Function', { fg = ct.pink9, ctermfg = 39, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'Statement', { fg = ct.red3, ctermfg = 197, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'Conditional', { fg = ct.purple4, bg = bg, ctermfg = 114, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Repeat', { fg = ct.redg, ctermfg = 203, italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Label', { fg = ct.purple0, ctermfg = 34, italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Operator', { fg = ct.cyan, ctermfg = 158, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'Keyword', { fg = ct.pink9, ctermfg = 183, bold = (vim.g.pinkfusion_bold == 1), italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Exception', { fg = ct.pink9, ctermfg = 168 })
      vim.api.nvim_set_hl(0, 'PreProc', { fg = ct.violet, ctermfg = 213 })
      vim.api.nvim_set_hl(0, 'Include', { fg = ct.pink7, bg = bg, ctermfg = 176, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Define', { fg = ct.red, ctermfg = 204, italic = (vim.g.pinkfusion_italic == 1) })
      vim.api.nvim_set_hl(0, 'Macro', { fg = ct.red7, bg = bg, ctermfg = 131, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'PreCondit', { fg = ct.lightpurple, bg = bg, ctermfg = 193, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Type', { fg = ct.purple9, ctermfg = 79, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'StorageClass', { fg = ct.pinkd, ctermfg = 45 })
      vim.api.nvim_set_hl(0, 'Structure', { fg = ct.cyan, ctermfg = 158, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'Typedef', { fg = ct.pink8, bg = bg, ctermfg = 81, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Special', { fg = ct.pink5, bg = bg, ctermfg = 203, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'SpecialChar', { fg = ct.red3, bg = bg, ctermfg = 197, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Tag', { fg = ct.purple, bg = bg, ctermfg = 149, ctermbg = 'NONE' })
      link_ts_v8(bg)
    end
    local uv = vim.uv or vim.loop
    async = uv.new_async(vim.schedule_wrap(function()
      vim.api.nvim_set_hl(0, 'SignifySignAdd', { link = 'GitGutterAdd' })
      vim.api.nvim_set_hl(0, 'SignifySignDelete', { link = 'GitGutterDelete' })
      vim.api.nvim_set_hl(0, 'SignifySignDeleteFirstLine', { link = 'SignifySignDelete' })
      vim.api.nvim_set_hl(0, 'SignifySignChange', { link = 'GitGutterChange' })
      vim.api.nvim_set_hl(0, 'SignifySignChangeDelete', { link = 'GitGutterChangeDelete' })
      vim.api.nvim_set_hl(0, 'gitcommitBranch', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'gitcommitDiscardedType', { fg = ct.red2, bg = bg, ctermfg = 203, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'gitcommitSelectedType', { link = 'cssTagName' })
      vim.api.nvim_set_hl(0, 'gitcommitHeader', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'gitcommitUntrackedFile', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'gitcommitDiscardedFile', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'gitcommitSelectedFile', { link = 'cssClassName' })
      vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'GitGutterAdd' })
      vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'GitGutterDelete' })
      vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'GitGutterChange' })
      vim.api.nvim_set_hl(0, 'GitSignsStagedAdd', { fg = ct.purple6 })
      vim.api.nvim_set_hl(0, 'GitSignsStagedDelete', { fg = ct.pink4})
      vim.api.nvim_set_hl(0, 'GitSignsStagedChange', { fg = ct.pink4 })
      vim.api.nvim_set_hl(0, 'GitSignsAddInline', { sp = ct.purple, bold = (vim.g.pinkfusion_bold == 1), underdotted = true})
      vim.api.nvim_set_hl(0, 'GitSignsDeleteInline', { sp = ct.br_red, bold = (vim.g.pinkfusion_bold == 1), strikethrough = true})
      vim.api.nvim_set_hl(0, 'GitSignsChangeInline', { sp = ct.purple5, bold = (vim.g.pinkfusion_bold == 1), underdotted = true})
      vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = ct.purple1, bg = bg, ctermfg = 149, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = ct.pink1, bg = bg, ctermfg = 80, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = ct.purple3, bg = bg, ctermfg = 91, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'jsGlobalNodeObjects', { fg = ct.purple6, bg = bg, ctermfg = 35, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'ALEErrorSign', { fg = ct.red, bg = bg3, ctermfg = 204, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'ALEWarningSign', { fg = ct.magenta, bg = bg3, ctermfg = 208, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'ALEInfoSign', { fg = ct.purple, bg = bg3, ctermfg = 149, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'plug2', { link = 'cssClassName' }) vim.api.nvim_set_hl(0, 'plugH2', { fg = ct.pink2, bg = bg, ctermfg = 74, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'plugNotLoaded', { fg = ct.red3, bg = bg, ctermfg = 197, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'TelescopeNormal', { fg = ct.fg1, bg = bg, ctermfg = 247, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = ct.pink1, bg = bg, ctermfg = 80, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = ct.purple6, bg = bg, ctermfg = 74, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = ct.purple2, bg = bg, ctermfg = 134, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TelescopeSelectionCaret', { fg = ct.pink8, bg = bg, ctermfg = 81, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'TelescopeSelection', { fg = ct.cyan, bg = ct.gray3, ctermfg = 158, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'TelescopeMatching', { fg = ct.violet, ctermfg = 213 }) vim.api.nvim_set_hl(0, 'sqlStatement', { fg = ct.br_cyan, bg = bg, ctermfg = 80, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'sqlKeyword', { fg = ct.magenta1, ctermfg = 214, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'sqlSpecial', { fg = ct.crimson, bg = bg, ctermfg = 161, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'sqlType', { link = 'Question' })
      vim.api.nvim_set_hl(0, 'sqlFunction', { fg = ct.red2, bg = bg, ctermfg = 203, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'mysqlKeyword', { fg = ct.red7, bg = bg, ctermfg = 131, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'mysqlOperator', { link = 'DiagnosticHint' })
      vim.api.nvim_set_hl(0, 'mysqlFunction', { fg = ct.emerald, bg = bg, ctermfg = 78, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'mysqlStatement', { fg = ct.cyan, bg = bg, ctermfg = 158, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'mysqlType', { fg = ct.pinkpop, bg = bg, ctermfg = 38, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Quote', { link = 'Label' })
      vim.api.nvim_set_hl(0, 'yamlFlowString', { fg = ct.red1, bg = bg, ctermfg = 229, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'yamlFlowStringDelimiter', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'yamlKeyValueDelimiter', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'markdownH1', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'markdownHeadingRule', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
      vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
      vim.api.nvim_set_hl(0, 'markdownListMarker', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'markdownBlockquote', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'markdownRule', { link = 'cssClassName' })
      vim.api.nvim_set_hl(0, 'markdownLinkText', { link = 'cssClassName' })
      vim.api.nvim_set_hl(0, 'markdownLinkTextDelimiter', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'markdownLinkDelimiter', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'markdownIdDeclaration', { link = 'cssTagName' })
      vim.api.nvim_set_hl(0, 'markdownAutomaticLink', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'markdownUrl', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'markdownUrlTitle', { fg = ct.red1, bg = bg, ctermfg = 229, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'markdownUrlDelimiter', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'markdownUrlTitleDelimiter', { fg = ct.red3, bg = bg, ctermfg = 228, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'markdownCodeDelimiter', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'markdownCode', { fg = ct.red1, bg = bg, ctermfg = 229, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'markdownEscape', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'markdownError', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'ClapPreview', { bg = bg2, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'ClapMatches', { fg = ct.red7, bg = ct.neardark5, ctermfg = 131, ctermbg = 238, sp = ct.red1, bold = (vim.g.pinkfusion_bold == 1), undercurl = true, reverse = true})
      vim.api.nvim_set_hl(0, 'ClapDisplay', { fg = ct.graya, bg = bg, ctermfg = 146, ctermbg = 234, sp = ct.red1, bold = (vim.g.pinkfusion_bold == 1), undercurl = true})

      vim.api.nvim_set_hl(0, 'Hlargs', { link = 'TSParameter' })
      vim.api.nvim_set_hl(0, 'HopNextKey', { fg = ct.violet, ctermfg = 213, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'HopNextKey1', { fg = ct.red, ctermfg = 222, bold = (vim.g.pinkfusion_bold == 1), underline = true })
      vim.api.nvim_set_hl(0, 'HopNextKey2', { fg = ct.pink, ctermfg = 111, bold = (vim.g.pinkfusion_bold == 1), underline = true })
      vim.api.nvim_set_hl(0, 'HopUnmatched', { fg = ct.gray7 })

      vim.api.nvim_set_hl(0, 'LeapMatch', { link = 'HopNextKey' })
      vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { link = 'HopNextKey1' })
      vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { link = 'HopNextKey2' })
      vim.api.nvim_set_hl(0, 'LeapBackDrop', { link = 'HopUnmatched' })

      vim.api.nvim_set_hl(0, 'FlashBackdrop', { link = 'HopUnmatched' })
      vim.api.nvim_set_hl(0, 'FlashMatch', { fg = ct.white, bg = ct.neardark6, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'FlashCurrent', { link = 'IncSearch' })
      vim.api.nvim_set_hl(0, 'FlashLabel', { link = 'HopNextKey' })

      vim.api.nvim_set_hl(0, 'IblIndent', { fg = ct.pink, ctermfg = 183, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'IblScope', { fg = ct.purple, ctermfg = 183, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent1', { fg = ct.purple, bg = bg, ctermfg = 141, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent2', { fg = ct.pink, bg = bg, ctermfg = 111, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent3', { fg = ct.purple, bg = bg, ctermfg = 149, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent4', { fg = ct.red, bg = bg, ctermfg = 222, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent5', { fg = ct.magenta, bg = bg, ctermfg = 208, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'IndentBlanklineIndent6', { fg = ct.red, bg = bg, ctermfg = 204, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'jsonEscape', { fg = ct.pink2, bg = bg, ctermfg = 74, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'jsonNumber', { fg = ct.red2, bg = bg, ctermfg = 229, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'jsonBraces', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'jsonNull', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'jsonBoolean', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'jsonKeywordMatch', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'jsonQuote', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'jsonNoise', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'DiagnosticError', { fg = ct.crimson, bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'DiagnosticSignError', { fg = ct.red6, bg = bg3, ctermfg = 167, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'DiagnosticErrorFloating', { link = 'DiagnosticError' })
      vim.api.nvim_set_hl(0, 'DiagnosticWarning', { fg = ct.red6, bg = bg, ctermfg = 143, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', { fg = ct.red5, bg = bg3, ctermfg = 186, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'DiagnosticWarningFloating', { fg = ct.red7, bg = bg, ctermfg = 180, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = ct.red6, bg = bg, ctermfg = 167, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarning', { fg = ct.purple4, bg = bg, ctermfg = 180, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = ct.gray6, bg = bg, ctermfg = 114, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = ct.gray5, bg = bg, ctermfg = 34, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { undercurl = true, sp = ct.pink})
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { underline = true, sp = ct.red8 })
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { underdashed = true, sp = ct.pink7 })
      vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { underdotted = true, sp = ct.gray4 })
      vim.api.nvim_set_hl(0, 'DiagnosticFloatingError', { link = 'DiagnosticError' })
      vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarning', { link = 'DiagnosticWarning' })
      vim.api.nvim_set_hl(0, 'DiagnosticFloatingInfo', { link = 'DiagnosticInfo' })
      vim.api.nvim_set_hl(0, 'DiagnosticFloatingHint', { link = 'DiagnosticHint' })
      vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', { fg = ct.br_pink, bg = bg3, ctermfg = 110, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'DiagnosticInfo', { fg = ct.br_pink, bg = bg, ctermfg = 110, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticHint', { fg = ct.purple6, bg = bg, ctermfg = 35, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'DiagnosticSignHint', { fg = ct.magenta2, bg = bg3, ctermfg = 221, ctermbg = 234 })
      vim.api.nvim_set_hl(0, 'DiagnosticHintFloating', { fg = ct.purple5, bg = bg, ctermfg = 37, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'LspInlayHint', { fg = ct.gray7, bg = bg })
      vim.api.nvim_set_hl(0, 'LspReferenceText', { bg = ct.neardark4, ctermbg = 239, sp = ct.magenta, bold = (vim.g.pinkfusion_bold == 1), underline = true})
      vim.api.nvim_set_hl(0, 'LspReferenceRead', { fg = ct.purple0, ctermfg = 34, sp = ct.magenta, bold = (vim.g.pinkfusion_bold == 1), underline = true})
      vim.api.nvim_set_hl(0, 'LspReferenceWrite', { fg = ct.purple0, ctermfg = 34, sp = ct.magenta, bold = (vim.g.pinkfusion_bold == 1), underline = true})
      vim.api.nvim_set_hl(0, 'LspFloatWinNormal', { fg = ct.text, bg = ct.neardarkb, ctermfg = 187, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { fg = 'NONE', bg = ct.darkpurple2, ctermfg = 'NONE', ctermbg = 53, sp = ct.red2, bold = (vim.g.pinkfusion_bold == 1), underline = true, italic = (vim.g.pinkfusion_italic == 1)})
      vim.api.nvim_set_hl(0, 'cssVendor', { link = 'cssTagName' })
      vim.api.nvim_set_hl(0, 'cssTagName', { fg = ct.purple2, bg = bg, ctermfg = 116, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'cssAttrComma', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssBackgroundProp', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'cssBorderProp', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'cssBoxProp', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'cssDimensionProp', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'cssFontProp', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'cssPositioningProp', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'cssTextProp', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'cssValueLength', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssValueInteger', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssValueNumber', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssIdentifier', { link = 'cssTagName' })
      vim.api.nvim_set_hl(0, 'cssIncludeKeyword', { link = 'Keyword' })
      vim.api.nvim_set_hl(0, 'cssImportant', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'cssClassName', { fg = ct.purple1, bg = bg, ctermfg = 149, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'cssClassNameDot', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssProp', { fg = ct.pink1, bg = bg, ctermfg = 80, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'cssAttr', { fg = ct.text, bg = bg, ctermfg = 187, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'cssUnitDecorators', { link = 'cssAttr' })
      vim.api.nvim_set_hl(0, 'cssNoise', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'goBuiltins', { fg = ct.pinkd, bg = bg, ctermfg = 45, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1), italic = (vim.g.pinkfusion_italic == 1)})
      vim.api.nvim_set_hl(0, 'stylusImport', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'CocErrorSign', { fg = ct.red1, ctermfg = 204 })
      vim.api.nvim_set_hl(0, 'CocWarningSign', { fg = ct.red1, ctermfg = 229 })
      vim.api.nvim_set_hl(0, 'CocHintSign', { fg = ct.pink2, ctermfg = 74 })
      vim.api.nvim_set_hl(0, 'CocInfoSign', { link = 'TSParameter' })
      vim.api.nvim_set_hl(0, 'CocLine', { sp = ct.magenta, undercurl = true })
      vim.api.nvim_set_hl(0, 'CocUnderline', { sp = ct.magenta, undercurl = true })
      vim.api.nvim_set_hl(0, 'CocErrorline', { sp = ct.crimson, undercurl = true })
      vim.api.nvim_set_hl(0, 'FugitiveblameHash', { link = 'cssProp' })
      vim.api.nvim_set_hl(0, 'FugitiveblameUncommitted', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'FugitiveblameTime', { link = 'cssClassName' })
      vim.api.nvim_set_hl(0, 'FugitiveblameNotCommittedYet', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'htmlTag', { link = 'Tag' })
      vim.api.nvim_set_hl(0, 'htmlEndTag', { link = 'htmlTag' })
      vim.api.nvim_set_hl(0, 'Delimiter', { fg = ct.cyan, bg = bg, ctermfg = 158, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'SpecialComment', { fg = ct.gray, bg = bg, ctermfg = 243, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Debug', { fg = ct.pink7, bg = bg, ctermfg = 67, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'debugPC', { link = 'Debug' })
      vim.api.nvim_set_hl(0, 'Underlined', { fg = ct.purple9, bg = bg, ctermfg = 79, ctermbg = 'NONE', underline = true })
      vim.api.nvim_set_hl(0, 'Ignore', { fg = ct.gray4, bg = bg, ctermfg = 239, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'Todo', { fg = ct.red4, bg = ct.pink4, ctermfg = 167, ctermbg = 242, bold = (vim.g.pinkfusion_bold == 1), underline = true})
      vim.api.nvim_set_hl(0, 'Conceal', { link = 'Keyword' })
      vim.api.nvim_set_hl(0, 'pugJavascriptOutputChar', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'fzf1', { fg = ct.red, bg = bg2, ctermfg = 222, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'fzf2', { fg = ct.magenta, bg = bg2, ctermfg = 208, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'fzf3', { fg = ct.crimson, bg = bg2, ctermfg = 161, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'diffRemoved', { fg = ct.red1, bg = bg, ctermfg = 204, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
      vim.api.nvim_set_hl(0, 'diffChanged', { fg = ct.pink1, bg = bg, ctermfg = 80, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'diffAdded', { fg = ct.purple1, bg = bg, ctermfg = 149, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
      vim.api.nvim_set_hl(0, 'diffLine', { fg = ct.red3, bg = bg, ctermfg = 228, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1)})
      vim.api.nvim_set_hl(0, 'diffSubname', { fg = ct.purple2, bg = bg, ctermfg = 116, ctermbg = 'NONE', bold = (vim.g.pinkfusion_bold == 1) })
      vim.api.nvim_set_hl(0, 'diffComment', { fg = ct.pink, bg = bg, ctermfg = 66, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { fg = ct.neardark3, bg = ct.pink4, ctermfg = 236, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BufferLineBuffer', { link = 'Comment' })
      vim.api.nvim_set_hl(0, 'BufferLineBufferVisible', { link = 'Comment' })
      vim.api.nvim_set_hl(0, 'BufferLineFill', { fg = ct.neardark3, bg = bg2, ctermfg = 236, ctermbg = 236 })
      vim.api.nvim_set_hl(0, 'BuffetCurrentBuffer', { fg = ct.neardark5, bg = ct.pink4, ctermfg = 238, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BuffetActiveBuffer', { fg = ct.neardark3, bg = ct.pink4, ctermfg = 236, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BuffetBuffer', { bg = ct.textdark, ctermbg = 146 })
      vim.api.nvim_set_hl(0, 'BuffetModCurrentBuffer', { fg = ct.neardark5, bg = ct.pink4, ctermfg = 238, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BuffetModActiveBuffer', { fg = ct.neardark4, bg = ct.pink4, ctermfg = 236, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BuffetModBuffer', { fg = ct.neardark4, bg = ct.pink4, ctermfg = 236, ctermbg = 62 })
      vim.api.nvim_set_hl(0, 'BuffetTrunc', { bg = ct.pink, ctermbg = 111 })
      vim.api.nvim_set_hl(0, 'BuffetTab', { bg = ct.purple, ctermbg = 149 })
      vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { fg = ct.fg2, ctermfg = 103 })
      vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { link = 'CocHintSign' })
      vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { fg = ct.pink6, ctermfg = 74 })
      vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { fg = ct.cyan, ctermfg = 158 })
      vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { fg = ct.purple2, ctermfg = 134 })
      vim.api.nvim_set_hl(0, 'CmpItemKindText', { fg = ct.text, ctermfg = 187 })
      vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { fg = ct.pinkpop, ctermfg = 38 })
      vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { fg = ct.pink9, ctermfg = 39 })
      vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { fg = ct.pinkpop, ctermfg = 38 })
      vim.api.nvim_set_hl(0, 'helpHyperTextEntry', { link = 'cssClassName' })
      vim.api.nvim_set_hl(0, 'helpHeadline', { link = 'SpellCap' })
      vim.api.nvim_set_hl(0, 'helpSectionDelim', { fg = ct.gray2, bg = bg, ctermfg = 235, ctermbg = 'NONE' })
      vim.api.nvim_set_hl(0, 'helpNote', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'xmlNamespace', { link = 'jsonNumber' })
      vim.api.nvim_set_hl(0, 'xmlAttribPunct', { link = 'cssImportant' })
      vim.api.nvim_set_hl(0, 'xmlProcessingDelim', { link = 'cssImportant' })

      vim.api.nvim_set_hl(0, 'NotifyBackground', { link = 'Normal' })
    end))
    load_basic()
    async:send()

    vim.api.nvim_set_hl_ns(0)
  end,
}

--stylua: ignore end
