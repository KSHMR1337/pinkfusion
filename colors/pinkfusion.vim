""
" Colorscheme: " License: MIT""

if exists('g:colors_name')
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif
let g:colors_name="pinkfusion"

let Italic = ""
if exists('g:pinkfusion_italic')
  let Italic = "italic"
endif

if exists('g:pinkfusion_transparent')
  let bg = "NONE"
  let bg2 = "NONE"
  let bg3 = "NONE"
  let bg4 = "NONE"
else
  if exists('g:pinkfusion_darker')
    let bg =  "#141020"
    let bg2 = "#1a1926"
    let bg3 = "#101020"
    let bg4 = "#040410"
  else
    let bg =  "#5d233c"
    let bg2 = "#742b3f"
    let bg3 = "#1a1926"
    let bg4 = "#4c0b21"
  end
end
let g:pinkfusion_italic = get(g:, 'pinkfusion_italic', 0)

let Bold = ""
if exists('g:pinkfusion_bold')
  let Bold = "bold"
endif

if &background != 'dark'
  set background=dark
endif

let g:pinkfusion_bold = get(g:, 'pinkfusion_bold', 0)
if has('nvim-0.8') == 1
  lua package.loaded['pinkfusion'] = nil
  " packadd pinkfusion
  lua require('pinkfusion').colorscheme()
else
  hi link SignifySignAdd GitGutterAdd
  hi link SignifySignDelete GitGutterDelete
  hi link SignifySignDeleteFirstLine SignifySignDelete
  hi link SignifySignChange GitGutterChange
  hi link SignifySignChangeDelete GitGutterChangeDelete
  hi link javaScriptOpSymbols cssImportant
  hi link javaScriptParens cssProp
  hi javaScriptDocTags guifg=#2E8B57 ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javaScriptDocSeeTag Question
  hi link javaScriptBrowserObjects SpellCap
  hi link javaScriptDOMObjects SpellCap
  hi link javaScriptFuncArg jsonNumber
  hi link gitcommitBranch SpellCap
  hi gitcommitDiscardedType guifg=#f62e65 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedType cssTagName
  hi link gitcommitHeader cssProp
  hi link gitcommitUntrackedFile jsonNumber
  hi gitcommitDiscardedFile guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedFile cssClassName
  hi GitSignsAddInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,underline cterm=Bold,undercurl guisp=#ff9b96
  hi GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,strikethrough guisp=#f2b57e
  hi GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,underline guisp=#f76a9b
  hi GitGutterAdd guifg=#228B22 ctermfg=149 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChange guifg=#2b4b9c ctermfg=80 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#f44f80 ctermfg=204 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChangeDelete guifg=#df2e72 ctermfg=91 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link jsParensIfElse cssProp
  hi link jsObjectKey cssProp
  hi link jsRepeat cssClassName
  hi jsArrowFunction guifg=#f8b2ce ctermfg=141 gui=NONE cterm=NONE
  hi link jsFunctionKey cssClassName
  hi link jsObjectFuncName cssClassName
  hi link jsNull jsonNumber
  hi link jsObjectColon cssImportant
  hi link jsParens cssProp
  hi link jsFuncParens cssProp
  hi link jsFuncArgs jsonNumber
  hi jsSpecial guifg=#fc3979 ctermfg=197 gui=NONE cterm=NONE
  hi link jsTemplateBraces cssImportant
  hi link jsGlobalObjects SpellCap
  hi jsGlobalNodeObjects guifg=#8FBC8F ctermfg=35 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi jsImport guifg=#b63d80 ctermfg=56 gui=Italic cterm=Italic
  hi link jsExport TSAttribute
  hi jsExportDefault guifg=#00FF00 ctermfg=149 gui=NONE cterm=NONE
  hi link jsExportDefaultGroup SpellCap
  hi link jsFrom jsReturn
  hi ALEErrorSign guifg=#f1609a ctermfg=204 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEWarningSign guifg=#fcd9b5 ctermfg=208 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEInfoSign guifg=#ff9b96 ctermfg=149 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link plug2 cssClassName
  hi plugH2 guifg=#3a5bcf ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link plugBracket cssProp
  hi link plugNumber jsonNumber
  hi link plugDash jsonNumber
  hi plugStar guifg=#f8e5c9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link plugMessage jsonNumber
  hi link plugName cssProp
  hi link plugUpdate cssImportant
  hi link plugEdge cssClassName
  hi plugSha guifg=#f8e5c9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi plugNotLoaded guifg=#fc3979 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#f39fb7 ctermfg=247 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#2b4b9c ctermfg=80 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeResultsBorder guifg=#3a5bcf ctermfg=74 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePreviewBorder guifg=#e3568f ctermfg=134 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelectionCaret guifg=#f36474 ctermfg=81 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#f3c5cb ctermfg=158 guibg=#773c3e ctermbg=236 gui=NONE cterm=NONE
  hi TelescopeMatching guifg=#EE82EE ctermfg=213 gui=NONE cterm=NONE
  hi sqlStatement guifg=#f56da0 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi sqlKeyword guifg=#f67f78 ctermfg=214 gui=Bold cterm=Bold
  hi sqlSpecial guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link sqlType Question
  hi sqlFunction guifg=#f62e65 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlKeyword guifg=#e23b5d ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link mysqlOperator DiagnosticHint
  hi mysqlFunction guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlStatement guifg=#f3c5cb ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlType guifg=#ff2a6e ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link Quote Label
  hi link cPreCondit cssProp
  hi link cDefine typescriptReserved
  hi link cStructure Question
  hi cStorageClass guifg=#2f4c9f ctermfg=74 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomClass guifg=#d2a0b5 ctermfg=146 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomMemVar guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustom guifg=#ff9b96 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cType typescriptReserved
  hi cCustomParen guifg=#fcd9b5 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cConditional Repeat
  hi link cCustomFunc Function
  hi cStatement guifg=#fc3979 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cppSTLnamespace Question
  hi cppAccess guifg=#f3c5cb ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cAnsiFunction guifg=#f2c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cRepeat Repeat
  hi cSpecial guifg=#7f2f44 ctermfg=236 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi yamlFlowString guifg=#f8e5c9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link yamlFlowStringDelimiter cssAttr
  hi yamlKeyValueDelimiter guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownH1 cssProp
  hi markdownHeadingRule guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi markdownHeadingDelimiter guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link markdownListMarker jsonNumber
  hi link markdownBlockquote jsonNumber
  hi link markdownRule cssClassName
  hi link markdownLinkText cssClassName
  hi link markdownLinkTextDelimiter cssProp
  hi link markdownLinkDelimiter cssProp
  hi link markdownIdDeclaration cssTagName
  hi link markdownAutomaticLink SpellCap
  hi link markdownUrl SpellCap
  hi markdownUrlTitle guifg=#f8e5c9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownUrlDelimiter jsonNumber
  hi markdownUrlTitleDelimiter guifg=#f3c37e ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownCodeDelimiter SpellCap
  hi markdownCode guifg=#f8e5c9 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownEscape SpellCap
  hi link markdownError cssImportant
  hi ClapPreview guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi ClapMatches guifg=#e23b5d ctermfg=131 guibg=#8c3b56 ctermbg=238 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#f44f80
  hi ClapDisplay guifg=#f16c6e ctermfg=146 guibg=bg ctermbg=234 gui=Bold,undercurl cterm=Bold,undercurl guisp=#f44f80
  hi TSAnnotation guifg=#f0a8d8 ctermfg=111 gui=NONE cterm=NONE
  hi TSAttribute guifg=#32CD32 ctermfg=116 gui=NONE cterm=NONE
  hi TSCharacter guifg=#f79b8b ctermfg=221 gui=NONE cterm=NONE
  hi link TSComment Comment
  hi TSError guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl
  hi TSPunctDelimiter guifg=#f8c1e5 ctermfg=189 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi TSPunctBracket guifg=#f07493 ctermfg=110 gui=Bold cterm=Bold
  hi TSPunctSpectial guifg=#f2b57e ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSConstant Constant
  hi TSConstBuiltin guifg=#ef6b62 ctermfg=167 gui=Italic cterm=Italic
  hi TSConstMacro guifg=#fc3979 ctermfg=197 gui=NONE cterm=NONE
  hi link TSString String
  hi TSStringRegex guifg=#32CD32 ctermfg=116 gui=NONE cterm=NONE
  hi TSStringEscape guifg=#f3c5cb ctermfg=158 gui=NONE cterm=NONE
  hi link TSNumber Number
  hi link TSBoolean Boolean
  hi link TSFloat Float
  hi TSField guifg=#e3568f ctermfg=134 gui=Bold cterm=Bold
  hi link TSType Type
  hi TSTypeBuiltin guifg=#f79b8b ctermfg=221 gui=Bold cterm=Bold
  hi TSProperty guifg=#3b4f9e ctermfg=45 gui=NONE cterm=NONE
  hi TSParameter guifg=#f6d1a1 ctermfg=229 gui=NONE cterm=NONE
  hi TSConstructor guifg=#4b6adf ctermfg=68 gui=Bold cterm=Bold
  hi TSFunction guifg=#f36474 ctermfg=81 gui=Bold cterm=Bold
  hi TSKeywordFunction guifg=#ff2a6e ctermfg=38 gui=Bold cterm=Bold
  hi TSFunctionBuiltin guifg=#2E8B57 ctermfg=148 gui=Bold cterm=Bold
  hi TSFuncBuiltin guifg=#ff2a6e ctermfg=38 gui=Bold cterm=Bold
  hi TSFuncMacro guifg=#f8b2ce ctermfg=141 gui=Bold cterm=Bold
  hi TSParameterReference guifg=#f3c5cb ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSMethod Function
  hi TSConditional guifg=#EE82EE ctermfg=213 gui=Bold cterm=Bold
  hi link TSRepeat Repeat
  hi TSException guifg=#f1609a ctermfg=204 gui=Italic cterm=Italic
  hi link TSLabel Label
  hi link TSOperator Operator
  hi link TSKeyword Keyword
  hi link TSStructure Structure
  hi link TSInclude  Include
  hi link TSTag Tag
  hi link TSTagDelimiter Delimiter
  hi link TSVariable Identifier
  hi TSVariableBuiltin guifg=#fcd9b5 ctermfg=208 gui=NONE cterm=NONE
  hi TSDefinitionUsage guifg=#e07645 ctermfg=186 gui=NONE cterm=NONE
  hi link TSDefinition Definition
  hi TSStrong guifg=#d46839 ctermfg=180 gui=Bold cterm=Bold
  hi TSEmphasis guifg=#f3c37e ctermfg=228 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi TSUnderline guifg=#f4a58d ctermfg=222 gui=undercurl cterm=undercurl
  hi link TSTitle SpecialKey
  hi TSLiteral guifg=#f8c6b0 ctermfg=187 gui=NONE cterm=NONE
  hi TSURI guifg=#2E8B57 ctermfg=148 gui=Italic cterm=Italic
  hi TSCurrentScope guibg=bg ctermbg=234 gui=Bold cterm=Bold
  hi TSIdentifier guifg=#f8c6b0 ctermfg=187 gui=Bold cterm=Bold
  hi link TSNameSpace Function
  hi link pythonStatement Repeat
  hi link pythonRepeat Repeat
  hi pythonFunction guifg=#f56da0 ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonExClass guifg=#f2c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link pythonBuiltinObj Repeat
  hi pythonDot guifg=#fcd9b5 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinFunc guifg=#f2c7b6 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsStorageClass guifg=#2b4b9c ctermfg=80 gui=NONE cterm=NONE
  hi jsOperator guifg=#f8b2ce ctermfg=141 gui=NONE cterm=NONE
  hi jsString guifg=#006400 ctermfg=34 gui=Italic cterm=Italic
  hi jsComment guifg=#d4847f ctermfg=243 gui=Italic cterm=Italic
  hi jsFuncCall guifg=#f56da0 ctermfg=80 gui=NONE cterm=NONE
  hi link jsNumber TSParameter
  hi link jsObjectProp DiagnosticHint
  hi jsOperatorKeyword guifg=#006400 ctermfg=34 gui=NONE cterm=NONE
  hi jsBooleanFalse guifg=#f1609a ctermfg=204 gui=NONE cterm=NONE
  hi jsBooleanTrue guifg=#f1609a ctermfg=204 gui=NONE cterm=NONE
  hi link jsRegexpString CocHintSign
  hi link jsConditional jsReturn
  hi jsFunction guifg=#6f87d1 ctermfg=39 gui=NONE cterm=NONE
  hi jsFunctionCall guifg=#00FF00 ctermfg=149 gui=NONE cterm=NONE
  hi jsFuncBlock guifg=#6f87d1 ctermfg=39 gui=NONE cterm=NONE
  hi jsReturn guifg=#f8b2ce ctermfg=141 gui=NONE cterm=NONE
  hi jsFuncName guifg=#4a6fba ctermfg=32 gui=NONE cterm=NONE
  hi link jsParensError jsFuncParens
  hi link jsClassDefinition SpecialKey
  hi jsModuleAs guifg=#f470b8 ctermfg=141 gui=Italic cterm=Italic
  hi jsExtendsKeyword guifg=#f76a9b ctermfg=139 gui=Italic cterm=Italic
  hi javaScriptReserved guifg=#f0a8d8 ctermfg=111 gui=NONE cterm=NONE
  hi link javaScriptConditional jsReturn
  hi link javaScriptStringS SpecialKey
  hi javaScriptBoolean guifg=#f1609a ctermfg=204 gui=NONE cterm=NONE
  hi javaScriptBraces guifg=#f8c1e5 ctermfg=189 gui=NONE cterm=NONE
  hi javaScriptLineComment guifg=#d4847f ctermfg=243 gui=Italic cterm=Italic
  hi link javaScriptSpecial TSParameter
  hi javaScriptFunction guifg=#2f4c9f ctermfg=74 gui=NONE cterm=NONE
  hi link javaScriptStatement jsReturn
  hi javaScriptException guifg=#eb4055 ctermfg=167 gui=NONE cterm=NONE
  hi vimCommentString guifg=#f3c37e ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link vimCommentTitle Question
  hi vimError guifg=#f8c6b0 ctermfg=187 guibg=#f44f80 ctermbg=204 gui=NONE cterm=NONE
  hi LightspeedLabel guifg=#f8c1e5 ctermfg=189 guibg=#9f2162 ctermbg=54 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#f4a58d
  hi LightspeedOverlapped guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedLabelDistant guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedLabelDistantOverlapped guifg=NONE ctermfg=NONE guibg=#DC143C ctermbg=161 gui=NONE cterm=NONE
  hi LightspeedShortcut guifg=#EE82EE ctermfg=213 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedShortcutOverlapped guifg=#EE82EE ctermfg=213 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedMaskedChar guifg=#f1609a ctermfg=204 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedGreyWash guifg=#f39fb7 ctermfg=247 gui=Italic cterm=Italic
  hi LightspeedUnlabeledMatch guifg=#fc3979 ctermfg=197 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedOneCharMatch guifg=#fa7bbd ctermfg=211 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedUniqueChar guifg=#ffe0c4 ctermfg=193 gui=Bold cterm=Bold
  hi LightspeedPendingOpArea guifg=#f36474 ctermfg=81 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedPendingChangeOpArea guifg=#ffe0c4 ctermfg=193 gui=Bold cterm=Bold
  hi LightspeedCursor guifg=#ff88bb ctermfg=218 guibg=#6b2536 ctermbg=235 gui=NONE cterm=NONE
  hi HopNextKey guifg=#EE82EE ctermfg=213 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey1 guifg=#f4a58d ctermfg=222 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey2 guifg=#f0a8d8 ctermfg=111 gui=Bold,underline cterm=Bold,underline
  hi IndentBlanklineChar guifg=#e25a71 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineContextChar guifg=#f59fc5 ctermfg=183 gui=Bold cterm=Bold
  hi IndentBlanklineContextStart guifg=#f59fc5 ctermfg=183 gui=Bold,underline cterm=Bold,underline guisp=#f59fc5
  hi IndentBlanklineIndent1 guifg=#f8b2ce ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent2 guifg=#f0a8d8 ctermfg=111 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent3 guifg=#ff9b96 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent4 guifg=#f4a58d ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent5 guifg=#fcd9b5 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent6 guifg=#f1609a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonEscape guifg=#3a5bcf ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonNumber guifg=#f6d1a1 ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link jsonBraces cssAttr
  hi link jsonNull jsonNumber
  hi link jsonBoolean jsonNumber
  hi link jsonKeywordMatch cssImportant
  hi link jsonQuote cssAttr
  hi link jsonNoise cssImportant
  hi DiagnosticError guifg=#e64f51 ctermfg=130 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignError guifg=#eb4055 ctermfg=167 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link DiagnosticErrorFloating DiagnosticError
  hi DiagnosticWarning guifg=#e3bb3b ctermfg=143 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignWarn guifg=#e38d55 ctermfg=186 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticWarningFloating guifg=#d46839 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#eb4055 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarning guifg=#d46839 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#3CB371 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#006400 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link DiagnosticUnderlineError DiagnosticError
  hi link DiagnosticFloatingError DiagnosticError
  hi link DiagnosticFloatingWarning DiagnosticWarning
  hi link DiagnosticFloatingInfo DiagnosticInfo
  hi link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticSignInfo guifg=#f07493 ctermfg=110 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#f07493 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#8FBC8F ctermfg=35 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignHint guifg=#f79b8b ctermfg=221 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticHintFloating guifg=#66CDAA ctermfg=37 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi LspReferenceText guibg=#7b2c34 ctermbg=239 gui=Bold,undercurl cterm=Bold,undercurl guisp=#fcd9b5
  hi LspReferenceRead guifg=#006400 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#fcd9b5
  hi LspReferenceWrite guifg=#006400 ctermfg=34 gui=Bold,undercurl cterm=Bold,undercurl guisp=#fcd9b5
  hi LspFloatWinNormal guifg=#f8c6b0 ctermfg=187 guibg=#5c3a54 ctermbg=236 gui=NONE cterm=NONE
  hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=#7e1650 ctermbg=53 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#f6d1a1
  hi link cssVendor cssTagName
  hi cssTagName guifg=#32CD32 ctermfg=116 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssAttrComma cssAttr
  hi link cssBackgroundProp cssProp
  hi link cssBorderProp cssProp
  hi link cssBoxProp SpellCap
  hi link cssDimensionProp SpellCap
  hi link cssFontProp cssProp
  hi link cssPositioningProp SpellCap
  hi link cssTextProp cssProp
  hi link cssValueLength cssAttr
  hi link cssValueInteger cssAttr
  hi link cssValueNumber cssAttr
  hi link cssIdentifier cssTagName
  hi link cssIncludeKeyword jsonNumber
  hi cssImportant guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssClassName guifg=#228B22 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssClassNameDot cssAttr
  hi cssProp guifg=#2b4b9c ctermfg=80 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssAttr guifg=#f8c6b0 ctermfg=187 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssUnitDecorators cssAttr
  hi link cssNoise cssImportant
  hi goBuiltins guifg=#3b4f9e ctermfg=45 guibg=NONE ctermbg=NONE gui=Bold,Italic cterm=Bold,Italic
  hi goConditional guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclType guifg=#e3568f ctermfg=134 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi goDirective guifg=#CD5C5C ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goFloats Character
  hi goFunction guifg=#4a68b2 ctermfg=116 gui=Bold cterm=Bold
  hi goFunctionCall guifg=#ff2a6e ctermfg=38 gui=Bold cterm=Bold
  hi goFunctionReturn guifg=#f470b8 ctermfg=141 gui=NONE cterm=NONE
  hi goImport guifg=#f3c5cb ctermfg=158 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goLabel guifg=#fcd9b5 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goMethod Function
  hi goMethodCall guifg=#f36474 ctermfg=81 gui=Bold cterm=Bold
  hi goPackage guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goRepeat guifg=#f79b8b ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goSignedInts guifg=#50c878 ctermfg=78 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goStruct guifg=#ff7f50 ctermfg=209 gui=Bold cterm=Bold
  hi goStructDef guifg=#87ceeb ctermfg=116 gui=Bold cterm=Bold
  hi link goUnsignedInts Character
  hi link goParamName TSParameter
  hi goParamType guifg=#f2b57e ctermfg=185 gui=NONE cterm=NONE
  hi goParen guifg=#f3c37e ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclaration guifg=#c84c88 ctermfg=176 gui=Bold cterm=Bold
  hi goSameId guifg=NONE ctermfg=NONE guibg=#7b2c34 ctermbg=236 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi goPredefinedIdentifiers guifg=#CD5C5C ctermfg=167 gui=Italic cterm=Italic
  hi goVar guifg=#f84a56 ctermfg=203 gui=Bold cterm=Bold
  hi goType guifg=#f79b8b ctermfg=221 gui=Bold cterm=Bold
  hi goTypeDecl guifg=#e07645 ctermfg=186 gui=Bold cterm=Bold
  hi goTypeName guifg=#f21f5b ctermfg=203 gui=Bold cterm=Bold
  hi link stylusVariable cssAttr
  hi link stylusClass cssClassName
  hi link stylusClassChar cssProp
  hi link stylusId cssClassName
  hi link stylusIdChar cssProp
  hi link cssVisualVal cssAttr
  hi link stylusImport jsonNumber
  hi CocErrorSign guifg=#f44f80 ctermfg=204 gui=NONE cterm=NONE
  hi CocWarningSign guifg=#f8e5c9 ctermfg=229 gui=NONE cterm=NONE
  hi CocHintSign guifg=#3a5bcf ctermfg=74 gui=NONE cterm=NONE
  hi link CocInfoSign TSParameter
  hi CocLine gui=undercurl cterm=undercurl guisp=#fcd9b5
  hi CocUnderline gui=undercurl cterm=undercurl guisp=#fcd9b5
  hi CocErrorline gui=undercurl cterm=undercurl guisp=#DC143C
  hi link FugitiveblameHash cssProp
  hi link FugitiveblameUncommitted cssImportant
  hi link FugitiveblameTime cssClassName
  hi link FugitiveblameNotCommittedYet jsonNumber
  hi Normal guifg=#f6c9d9 ctermfg=189 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi NormalFloat guifg=#f8c6b0 ctermfg=187 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi NormalNC guifg=#f1b6b1 ctermfg=146 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi FloatBorder guifg=#2b4b9c ctermfg=80 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi LineNr guifg=#b73f5a ctermfg=239 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#7b2c34 ctermbg=236 gui=Bold cterm=Bold
  hi CursorLineNr guifg=#006400 ctermfg=34 guibg=bg3 ctermbg=234 gui=Bold cterm=Bold
  hi ColorColumn guifg=NONE ctermfg=NONE guibg=#6b2536 ctermbg=235 gui=NONE cterm=NONE
  hi Cursor guibg=#f6c9d9 ctermbg=189 gui=NONE cterm=NONE
  hi CursorIM guifg=#f6c9d9 ctermfg=189 guibg=#5f7e97 ctermbg=66 gui=NONE cterm=NONE
  hi CursorColumn guibg=#7b2c34 ctermbg=236 gui=NONE cterm=NONE
  hi Directory guifg=#f0a8d8 ctermfg=111 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#5a0b34 ctermbg=239 gui=Bold cterm=Bold
  hi DiffChange guifg=NONE ctermfg=NONE guibg=bg2 ctermbg=236 gui=Bold cterm=Bold
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#9d385a ctermbg=239
  hi DiffText guifg=NONE ctermfg=NONE guibg=#420010 ctermbg=89 gui=Bold,Italic,underline cterm=Bold,Italic,underline
  hi ErrorMsg guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi VertSplit guifg=#e25a71 ctermfg=243 gui=NONE cterm=NONE
  hi Folded guifg=#e25a71 ctermfg=243 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi FoldColumn guifg=#7f2f44 ctermfg=236 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi SignColumn guifg=NONE ctermfg=NONE guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#9f2162 ctermbg=54 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#f4a58d
  hi MatchParen guifg=#EE82EE ctermfg=213 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#f2b57e
  hi ModeMsg guifg=#7FFF00 ctermfg=112 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#f16c6e ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#9b3751 ctermfg=239 gui=NONE cterm=NONE
  hi PMenu guifg=#e68996 ctermfg=103 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi PMenuSel guifg=#f8c1e5 ctermfg=189 guibg=#8c3b56 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuKind guifg=#66CDAA ctermfg=189 guibg=#8c3b56 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuExtra guifg=#6f87d1 ctermfg=189 guibg=#8c3b56 ctermbg=238 gui=Bold,Italic cterm=Bold,Italic
  hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#9b3751 ctermbg=239 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#f16c6e ctermbg=146 gui=NONE cterm=NONE
  hi MsgArea guifg=#ff88bb ctermfg=218 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi Question guifg=#4b6adf ctermfg=68 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=NONE ctermfg=NONE guibg=#9d385a ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#EE82EE
  hi SpecialKey guifg=#f4a58d ctermfg=222 gui=NONE cterm=NONE
  hi SpellBad guifg=#e64f51 ctermfg=130 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#e64f51
  hi SpellCap guifg=#3a5bcf ctermfg=74 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#3CB371 ctermfg=114 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#ff9b96
  hi StatusLine guifg=#f6c9d9 ctermfg=189 guibg=#8c3b56 ctermbg=238 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#e25a71 ctermfg=243 guibg=#7b2c34 ctermbg=236 gui=NONE cterm=NONE
  hi TabLine guifg=#6a82d0 ctermfg=110 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TabLineFill guifg=#7f2f44 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#6f87d1 ctermfg=39 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi Title guifg=#f0a8d8 ctermfg=111 gui=Bold cterm=Bold
  hi Visual guibg=#9d385a ctermbg=239 gui=NONE cterm=NONE
  hi VisualNOS guifg=#d4847f ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#f62e65 ctermfg=203 gui=undercurl cterm=undercurl guisp=#b72d5c
  hi WildMenu guifg=#e25a71 ctermfg=243 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#9b3751 ctermfg=239 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi Comment guifg=#f39fb7 ctermfg=247 gui=Italic cterm=Italic
  hi Constant guifg=#f8e5c9 ctermfg=229 gui=NONE cterm=NONE
  hi String guifg=#66CDAA ctermfg=35 gui=NONE cterm=NONE
  hi Character guifg=#f8b2ce ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Boolean guifg=#e71a50 ctermfg=203 gui=Italic cterm=Italic
  hi Number guifg=#fcd9b5 ctermfg=208 gui=NONE cterm=NONE
  hi Float guifg=#fc3979 ctermfg=197 gui=NONE cterm=NONE
  hi Identifier guifg=#f8c1e5 ctermfg=189 gui=NONE cterm=NONE
  hi Function guifg=#6f87d1 ctermfg=39 gui=Bold cterm=Bold
  hi Statement guifg=#fc3979 ctermfg=197 gui=Bold cterm=Bold
  hi Conditional guifg=#3CB371 ctermfg=114 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#f84a56 ctermfg=203 gui=Italic cterm=Italic
  hi Label guifg=#006400 ctermfg=34 gui=Italic cterm=Italic
  hi Operator guifg=#f3c5cb ctermfg=158 gui=Bold cterm=Bold
  hi Keyword guifg=#f59fc5 ctermfg=183 gui=Bold,Italic cterm=Bold,Italic
  hi Exception guifg=#f62872 ctermfg=168 gui=NONE cterm=NONE
  hi PreProc guifg=#EE82EE ctermfg=213 gui=NONE cterm=NONE

  hi Include guifg=#c84c88 ctermfg=176 gui=NONE cterm=NONE
  hi Define guifg=#f1609a ctermfg=204 gui=Bold cterm=Bold
  hi Macro guifg=#e23b5d ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#ffe0c4 ctermfg=193 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#00FA9A ctermfg=79 gui=Bold cterm=Bold
  hi StorageClass guifg=#3b4f9e ctermfg=45 gui=NONE cterm=NONE
  hi Structure guifg=#f3c5cb ctermfg=158 gui=Bold cterm=Bold
  hi Typedef guifg=#f36474 ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#FF6347 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#fc3979 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

  hi Tag guifg=#ff9b96 ctermfg=149 gui=NONE cterm=NONE
  hi htmlTag guifg=#d4847f ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link htmlEndTag htmlTag

  hi Delimiter guifg=#f3c5cb ctermfg=158 gui=NONE cterm=NONE
  hi SpecialComment guifg=#d4847f ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#3d59b2 ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#00FA9A ctermfg=79 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#9b3751 ctermfg=239 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Error guifg=#DC143C ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#e38d55
  hi Todo guifg=#ef6b62 ctermfg=167 guibg=#9d285d ctermbg=242 gui=Bold,underline cterm=Bold,underline
  hi typescriptParens guifg=#6f87d1 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLogicSymbols cssImportant
  hi typescriptReserved guifg=#3a57bb ctermfg=62 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLabel DiagnosticHintFloating
  hi typescriptFuncName guifg=#006400 ctermfg=34 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptCall jsonNumber
  hi link typescriptVariable typescriptReserved
  hi link typescriptBinaryOp cssImportant
  hi link typescriptAssign cssImportant
  hi typescriptObjectLabel guifg=#6f87d1 ctermfg=39 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptDotNotation cssImportant
  hi link typescriptOperator cssImportant
  hi link typescriptTernaryOp cssImportant
  hi link typescriptTypeAnnotation cssImportant
  hi link typescriptIdentifierName cssAttr
  hi typescriptArrowFuncArg guifg=#fcd9b5 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptParamImpl jsonNumber
  hi link typescriptRepeat cssClassName
  hi link typescriptStatementKeyword SpellCap
  hi link typescriptAliasKeyword cssClassName
  hi typescriptInterfaceKeyword guifg=#98FB98 ctermfg=149 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptTemplateSB cssImportant
  hi link typescriptMemberOptionality jsonNumber
  hi link typescriptOptionalMark jsonNumber
  hi link typescriptUnaryOp cssImportant
  hi link typescriptBranch Statement
  hi link pugJavascriptOutputChar jsonNumber
  hi fzf1 guifg=#f4a58d ctermfg=222 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf2 guifg=#fcd9b5 ctermfg=208 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf3 guifg=#DC143C ctermfg=161 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi link NERDTreeHelp cssAttr
  hi link NERDTreeHelpKey cssClassName
  hi link NERDTreeHelpCommand jsonNumber
  hi link NERDTreeHelpTitle cssProp
  hi link NERDTreeUp cssClassName
  hi link NERDTreeCWD SpellCap
  hi link NERDTreeOpenable cssImportant
  hi link NERDTreeClosable jsonNumber
  hi link javascriptOpSymbol cssImportant
  hi javascriptDocNotation guifg=#2E8B57 ctermfg=148 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocNamedParamType Question
  hi javascriptDocParamName guifg=#f3c37e ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocParamType Question
  hi link javascriptTemplateSB cssImportant
  hi link javascriptRepeat cssClassName
  hi link javascriptObjectLabelColon cssImportant
  hi link javascriptObjectMethodName cssClassName
  hi link javascriptFuncName cssClassName
  hi diffRemoved guifg=#f44f80 ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffChanged guifg=#2b4b9c ctermfg=80 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffAdded guifg=#228B22 ctermfg=149 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffLine guifg=#f3c37e ctermfg=228 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffSubname guifg=#32CD32 ctermfg=116 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffComment guifg=#5f7e97 ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#7c2b45 ctermfg=236 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#ff9b96 ctermfg=149 guibg=#7b2c34 ctermbg=236 gui=NONE cterm=NONE
  hi link BufferLineBuffer Comment
  hi link BufferLineBufferVisible Comment
  hi BufferLineFill guifg=#7c2b45 ctermfg=236 guibg=#7b2c34 ctermbg=236 gui=NONE cterm=NONE
  hi BuffetCurrentBuffer guifg=#8c3b56 ctermfg=238 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BuffetActiveBuffer guifg=#7c2b45 ctermfg=236 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BuffetBuffer guibg=#d2a0b5 ctermbg=146 gui=NONE cterm=NONE
  hi BuffetModCurrentBuffer guifg=#8c3b56 ctermfg=238 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BuffetModActiveBuffer guifg=#7b2c34 ctermfg=236 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BuffetModBuffer guifg=#7b2c34 ctermfg=236 guibg=#3a57bb ctermbg=62 gui=NONE cterm=NONE
  hi BuffetTrunc guibg=#f0a8d8 ctermbg=111 gui=NONE cterm=NONE
  hi BuffetTab guibg=#ff9b96 ctermbg=149 gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#e68996 ctermfg=103 gui=NONE cterm=NONE
  hi link CmpItemAbbrMatch CocHintSign
  hi CmpItemAbbrMatchFuzzy guifg=#2f4c9f ctermfg=74 gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#f3c5cb ctermfg=158 gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#e3568f ctermfg=134 gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#f8c6b0 ctermfg=187 gui=NONE cterm=NONE
  hi CmpItemKindFunction guifg=#ff2a6e ctermfg=38 gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#6f87d1 ctermfg=39 gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#ff2a6e ctermfg=38 gui=NONE cterm=NONE
  hi link elmDelimiter cssAttr
  hi link elmOperator cssImportant
  hi link helpHyperTextEntry cssClassName
  hi link helpHeadline SpellCap
  hi helpSectionDelim guifg=#5c0d24 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link helpNote cssImportant
  hi link xmlNamespace jsonNumber
  hi link xmlAttribPunct cssImportant
  hi link xmlProcessingDelim cssImportant
endif
if has('terminal')
  let g:terminal_ansi_colors = [
  \ "#070510",
  \ "#f1609a",
  \ "#ff9b96",
  \ "#f4a58d",
  \ "#f8b2ce",
  \ "#fcd9b5",
  \ "#f3c5cb",
  \ "#3c1b2d",
  \ "#5d233c",
  \ "#f62e65",
  \ "#ffe0c4",
  \ "#f6d1a1",
  \ "#4b6adf",
  \ "#f67f78",
  \ "#f56da0",
  \ "#f8c1e5"
  \ ]
endif

if has('nvim')
  let g:terminal_color_foreground = "#d4847f"
  let g:terminal_color_background = "#5d233c"
  let g:terminal_color_0 = "#070510"
  let g:terminal_color_1 = "#f1609a"
  let g:terminal_color_2 = "#ff9b96"
  let g:terminal_color_3 = "#f4a58d"
  let g:terminal_color_4 = "#f8b2ce"
  let g:terminal_color_5 = "#fcd9b5"
  let g:terminal_color_6 = "#f3c5cb"
  let g:terminal_color_7 = "#3c1b2d"
  let g:terminal_color_8 = "#5d233c"
  let g:terminal_color_9 = "#f62e65"
  let g:terminal_color_10 = "#ffe0c4"
  let g:terminal_color_11 = "#f6d1a1"
  let g:terminal_color_12 = "#4b6adf"
  let g:terminal_color_13 = "#f67f78"
  let g:terminal_color_14 = "#f56da0"
  let g:terminal_color_15 = "#f8c1e5"
endif
