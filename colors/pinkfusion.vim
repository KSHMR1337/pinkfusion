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
    let bg =  "#1e1e2e"
    let bg2 = "#313244"
    let bg3 = "#1e1e2e"
    let bg4 = "#181825"
  else
    let bg =  "#1e1e2e"
    let bg2 = "#313244"
    let bg3 = "#1e1e2e"
    let bg4 = "#181825"
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
  hi javaScriptDocTags guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javaScriptDocSeeTag Question
  hi link javaScriptBrowserObjects SpellCap
  hi link javaScriptDOMObjects SpellCap
  hi link javaScriptFuncArg jsonNumber
  hi link gitcommitBranch SpellCap
  hi gitcommitDiscardedType guifg=#e04f5f ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedType cssTagName
  hi link gitcommitHeader cssProp
  hi link gitcommitUntrackedFile jsonNumber
  hi gitcommitDiscardedFile guifg=#ff4b66 ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link gitcommitSelectedFile cssClassName
  hi GitSignsAddInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,underline cterm=Bold,undercurl guisp=#ff7a91
  hi GitSignsDeleteInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,strikethrough guisp=#ff5c7a
  hi GitSignsChangeInline guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,underline guisp=#ff99a8
  hi GitGutterAdd guifg=#ff7a91 ctermfg=210 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChange guifg=#ff5c7a ctermfg=204 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#e04f5f ctermfg=167 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi GitGutterChangeDelete guifg=#d73442 ctermfg=161 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link jsParensIfElse cssProp
  hi link jsObjectKey cssProp
  hi link jsRepeat cssClassName
  hi jsArrowFunction guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi link jsFunctionKey cssClassName
  hi link jsObjectFuncName cssClassName
  hi link jsNull jsonNumber
  hi link jsObjectColon cssImportant
  hi link jsParens cssProp
  hi link jsFuncParens cssProp
  hi link jsFuncArgs jsonNumber
  hi jsSpecial guifg=#f84555 ctermfg=197 gui=NONE cterm=NONE
  hi link jsTemplateBraces cssImportant
  hi link jsGlobalObjects SpellCap
  hi jsGlobalNodeObjects guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi jsImport guifg=#ff5c7a ctermfg=204 gui=Italic cterm=Italic
  hi link jsExport TSAttribute
  hi jsExportDefault guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi link jsExportDefaultGroup SpellCap
  hi link jsFrom jsReturn
  hi ALEErrorSign guifg=#e04f5f ctermfg=167 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEWarningSign guifg=#ff99a8 ctermfg=218 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi ALEInfoSign guifg=#ff7a91 ctermfg=210 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link plug2 cssClassName
  hi plugH2 guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link plugBracket cssProp
  hi link plugNumber jsonNumber
  hi link plugDash jsonNumber
  hi plugStar guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link plugMessage jsonNumber
  hi link plugName cssProp
  hi link plugUpdate cssImportant
  hi link plugEdge cssClassName
  hi plugSha guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi plugNotLoaded guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TelescopeNormal guifg=#ff99a8 ctermfg=218 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePromptBorder guifg=#ff5c7a ctermfg=204 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeResultsBorder guifg=#ff4b66 ctermfg=197 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopePreviewBorder guifg=#ff7a91 ctermfg=210 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelectionCaret guifg=#f84555 ctermfg=197 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TelescopeSelection guifg=#ffb3b3 ctermfg=218 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi TelescopeMatching guifg=#ff4b66 ctermfg=197 gui=NONE cterm=NONE
  hi sqlStatement guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi sqlKeyword guifg=#ffb3b3 ctermfg=218 gui=Bold cterm=Bold
  hi sqlSpecial guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link sqlType Question
  hi sqlFunction guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlKeyword guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link mysqlOperator DiagnosticHint
  hi mysqlFunction guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlStatement guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi mysqlType guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link Quote Label
  hi link cPreCondit cssProp
  hi link cDefine typescriptReserved
  hi link cStructure Question
  hi cStorageClass guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomClass guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustomMemVar guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi cCustom guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cType typescriptReserved
  hi cCustomParen guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cConditional Repeat
  hi link cCustomFunc Function
  hi cStatement guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cppSTLnamespace Question
  hi cppAccess guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cAnsiFunction guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link cRepeat Repeat
  hi cSpecial guifg=#d73442 ctermfg=161 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi yamlFlowString guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link yamlFlowStringDelimiter cssAttr
  hi yamlKeyValueDelimiter guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownH1 cssProp
  hi markdownHeadingRule guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi markdownHeadingDelimiter guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi link markdownListMarker jsonNumber
  hi link markdownBlockquote jsonNumber
  hi link markdownRule cssClassName
  hi link markdownLinkText cssClassName
  hi link markdownLinkTextDelimiter cssProp
  hi link markdownLinkDelimiter cssProp
  hi link markdownIdDeclaration cssTagName
  hi link markdownAutomaticLink SpellCap
  hi link markdownUrl SpellCap
  hi markdownUrlTitle guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownUrlDelimiter jsonNumber
  hi markdownUrlTitleDelimiter guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownCodeDelimiter SpellCap
  hi markdownCode guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link markdownEscape SpellCap
  hi link markdownError cssImportant
  hi ClapPreview guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi ClapMatches guifg=#ff4b66 ctermfg=197 guibg=#45475a ctermbg=239 gui=Bold,undercurl,reverse cterm=Bold,undercurl,reverse guisp=#ff5c7a
  hi ClapDisplay guifg=#f84555 ctermfg=197 guibg=bg ctermbg=234 gui=Bold,undercurl cterm=Bold,undercurl guisp=#ff4b66
  hi TSAnnotation guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi TSAttribute guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi TSCharacter guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi link TSComment Comment
  hi TSError guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl
  hi TSPunctDelimiter guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi TSPunctBracket guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi TSPunctSpectial guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSConstant Constant
  hi TSConstBuiltin guifg=#ff4b66 ctermfg=197 gui=Italic cterm=Italic
  hi TSConstMacro guifg=#f84555 ctermfg=197 gui=NONE cterm=NONE
  hi link TSString String
  hi TSStringRegex guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi TSStringEscape guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi link TSNumber Number
  hi link TSBoolean Boolean
  hi link TSFloat Float
  hi TSField guifg=#ff7a91 ctermfg=210 gui=Bold cterm=Bold
  hi link TSType Type
  hi TSTypeBuiltin guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi TSProperty guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi TSParameter guifg=#ffb3b3 ctermfg=218 gui=NONE cterm=NONE
  hi TSConstructor guifg=#ff4b66 ctermfg=197 gui=Bold cterm=Bold
  hi TSFunction guifg=#f84555 ctermfg=197 gui=Bold cterm=Bold
  hi TSKeywordFunction guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi TSFunctionBuiltin guifg=#ff7a91 ctermfg=210 gui=Bold cterm=Bold
  hi TSFuncBuiltin guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi TSFuncMacro guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi TSParameterReference guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link TSMethod Function
  hi TSConditional guifg=#ff4b66 ctermfg=197 gui=Bold cterm=Bold
  hi link TSRepeat Repeat
  hi TSException guifg=#e04f5f ctermfg=167 gui=Italic cterm=Italic
  hi link TSLabel Label
  hi link TSOperator Operator
  hi link TSKeyword Keyword
  hi link TSStructure Structure
  hi link TSInclude  Include
  hi link TSTag Tag
  hi link TSTagDelimiter Delimiter
  hi link TSVariable Identifier
  hi TSVariableBuiltin guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi TSDefinitionUsage guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi link TSDefinition Definition
  hi TSStrong guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi TSEmphasis guifg=#ff99a8 ctermfg=218 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi TSUnderline guifg=#ff7a91 ctermfg=210 gui=undercurl cterm=undercurl
  hi link TSTitle SpecialKey
  hi TSLiteral guifg=#ffb3b3 ctermfg=218 gui=NONE cterm=NONE
  hi TSURI guifg=#ff7a91 ctermfg=210 gui=Italic cterm=Italic
  hi TSCurrentScope guibg=bg ctermbg=234 gui=Bold cterm=Bold
  hi TSIdentifier guifg=#ffb3b3 ctermfg=218 gui=Bold cterm=Bold
  hi link TSNameSpace Function
  hi link pythonStatement Repeat
  hi link pythonRepeat Repeat
  hi pythonFunction guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonExClass guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link pythonBuiltinObj Repeat
  hi pythonDot guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi pythonBuiltinFunc guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsStorageClass guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi jsOperator guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi jsString guifg=#ff7a91 ctermfg=210 gui=Italic cterm=Italic
  hi jsComment guifg=#9399b2 ctermfg=246 gui=Italic cterm=Italic
  hi jsFuncCall guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi link jsNumber TSParameter
  hi link jsObjectProp DiagnosticHint
  hi jsOperatorKeyword guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi jsBooleanFalse guifg=#e04f5f ctermfg=167 gui=NONE cterm=NONE
  hi jsBooleanTrue guifg=#e04f5f ctermfg=167 gui=NONE cterm=NONE
  hi link jsRegexpString CocHintSign
  hi link jsConditional jsReturn
  hi jsFunction guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi jsFunctionCall guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi jsFuncBlock guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi jsReturn guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi jsFuncName guifg=#ff4b66 ctermfg=197 gui=NONE cterm=NONE
  hi link jsParensError jsFuncParens
  hi link jsClassDefinition SpecialKey
  hi jsModuleAs guifg=#ff5c7a ctermfg=204 gui=Italic cterm=Italic
  hi jsExtendsKeyword guifg=#ff99a8 ctermfg=218 gui=Italic cterm=Italic
  hi javaScriptReserved guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi link javaScriptConditional jsReturn
  hi link javaScriptStringS SpecialKey
  hi javaScriptBoolean guifg=#e04f5f ctermfg=167 gui=NONE cterm=NONE
  hi javaScriptBraces guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi javaScriptLineComment guifg=#9399b2 ctermfg=246 gui=Italic cterm=Italic
  hi link javaScriptSpecial TSParameter
  hi javaScriptFunction guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi link javaScriptStatement jsReturn
  hi javaScriptException guifg=#e04f5f ctermfg=167 gui=NONE cterm=NONE
  hi vimCommentString guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link vimCommentTitle Question
  hi vimError guifg=#ffb3b3 ctermfg=218 guibg=#e04f5f ctermbg=167 gui=NONE cterm=NONE
  hi LightspeedLabel guifg=#ff99a8 ctermfg=218 guibg=#45475a ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#ff7a91
  hi LightspeedOverlapped guifg=NONE ctermfg=NONE guibg=#e04f5f ctermbg=167 gui=NONE cterm=NONE
  hi LightspeedLabelDistant guifg=NONE ctermfg=NONE guibg=#e04f5f ctermbg=167 gui=NONE cterm=NONE
  hi LightspeedLabelDistantOverlapped guifg=NONE ctermfg=NONE guibg=#e04f5f ctermbg=167 gui=NONE cterm=NONE
  hi LightspeedShortcut guifg=#ff4b66 ctermfg=197 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedShortcutOverlapped guifg=#ff4b66 ctermfg=197 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedMaskedChar guifg=#e04f5f ctermfg=167 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedGreyWash guifg=#ff99a8 ctermfg=218 gui=Italic cterm=Italic
  hi LightspeedUnlabeledMatch guifg=#f84555 ctermfg=197 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedOneCharMatch guifg=#ff5c7a ctermfg=204 gui=Bold,Italic cterm=Bold,Italic
  hi LightspeedUniqueChar guifg=#ffb3b3 ctermfg=218 gui=Bold cterm=Bold
  hi LightspeedPendingOpArea guifg=#f84555 ctermfg=197 gui=Bold,undercurl cterm=Bold,undercurl
  hi LightspeedPendingChangeOpArea guifg=#ffb3b3 ctermfg=218 gui=Bold cterm=Bold
  hi LightspeedCursor guifg=#ff99a8 ctermfg=218 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi HopNextKey guifg=#ff4b66 ctermfg=197 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey1 guifg=#ff7a91 ctermfg=210 gui=Bold,underline cterm=Bold,underline
  hi HopNextKey2 guifg=#ff99a8 ctermfg=218 gui=Bold,underline cterm=Bold,underline
  hi IndentBlanklineChar guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineContextChar guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi IndentBlanklineContextStart guifg=#ff99a8 ctermfg=218 gui=Bold,underline cterm=Bold,underline guisp=#ff99a8
  hi IndentBlanklineIndent1 guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent2 guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent3 guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent4 guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent5 guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi IndentBlanklineIndent6 guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonEscape guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi jsonNumber guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link jsonBraces cssAttr
  hi link jsonNull jsonNumber
  hi link jsonBoolean jsonNumber
  hi link jsonKeywordMatch cssImportant
  hi link jsonQuote cssAttr
  hi link jsonNoise cssImportant
  hi DiagnosticError guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignError guifg=#e04f5f ctermfg=167 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi link DiagnosticErrorFloating DiagnosticError
  hi DiagnosticWarning guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignWarn guifg=#ff7a91 ctermfg=210 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticWarningFloating guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextError guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextWarning guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextInfo guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticVirtualTextHint guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link DiagnosticUnderlineError DiagnosticError
  hi link DiagnosticFloatingError DiagnosticError
  hi link DiagnosticFloatingWarning DiagnosticWarning
  hi link DiagnosticFloatingInfo DiagnosticInfo
  hi link DiagnosticFloatingHint DiagnosticHint
  hi DiagnosticSignInfo guifg=#ff5c7a ctermfg=204 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticInfo guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticHint guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi DiagnosticSignHint guifg=#ff99a8 ctermfg=218 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi DiagnosticHintFloating guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi LspReferenceText guibg=#45475a ctermbg=239 gui=Bold,undercurl cterm=Bold,undercurl guisp=#ff99a8
  hi LspReferenceRead guifg=#ff7a91 ctermfg=210 gui=Bold,undercurl cterm=Bold,undercurl guisp=#ff99a8
  hi LspReferenceWrite guifg=#ff7a91 ctermfg=210 gui=Bold,undercurl cterm=Bold,undercurl guisp=#ff99a8
  hi LspFloatWinNormal guifg=#ffb3b3 ctermfg=218 guibg=#313244 ctermbg=236 gui=NONE cterm=NONE
  hi LspSignatureActiveParameter guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#ffb3b3
  hi link cssVendor cssTagName
  hi cssTagName guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
  hi cssImportant guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssClassName guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssClassNameDot cssAttr
  hi cssProp guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi cssAttr guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link cssUnitDecorators cssAttr
  hi link cssNoise cssImportant
  hi goBuiltins guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold,Italic cterm=Bold,Italic
  hi goConditional guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclType guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi goDirective guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goFloats Character
  hi goFunction guifg=#ff4b66 ctermfg=197 gui=Bold cterm=Bold
  hi goFunctionCall guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi goFunctionReturn guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi goImport guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goLabel guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link goMethod Function
  hi goMethodCall guifg=#f84555 ctermfg=197 gui=Bold cterm=Bold
  hi goPackage guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goRepeat guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goSignedInts guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goStruct guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi goStructDef guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi link goUnsignedInts Character
  hi link goParamName TSParameter
  hi goParamType guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi goParen guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi goDeclaration guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi goSameId guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic
  hi goPredefinedIdentifiers guifg=#e04f5f ctermfg=167 gui=Italic cterm=Italic
  hi goVar guifg=#ff4b66 ctermfg=197 gui=Bold cterm=Bold
  hi goType guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi goTypeDecl guifg=#ff7a91 ctermfg=210 gui=Bold cterm=Bold
  hi goTypeName guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi link stylusVariable cssAttr
  hi link stylusClass cssClassName
  hi link stylusClassChar cssProp
  hi link stylusId cssClassName
  hi link stylusIdChar cssProp
  hi link cssVisualVal cssAttr
  hi link stylusImport jsonNumber
  hi CocErrorSign guifg=#e04f5f ctermfg=167 gui=NONE cterm=NONE
  hi CocWarningSign guifg=#ffb3b3 ctermfg=218 gui=NONE cterm=NONE
  hi CocHintSign guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi link CocInfoSign TSParameter
  hi CocLine gui=undercurl cterm=undercurl guisp=#ff99a8
  hi CocUnderline gui=undercurl cterm=undercurl guisp=#ff99a8
  hi CocErrorline gui=undercurl cterm=undercurl guisp=#e04f5f
  hi link FugitiveblameHash cssProp
  hi link FugitiveblameUncommitted cssImportant
  hi link FugitiveblameTime cssClassName
  hi link FugitiveblameNotCommittedYet jsonNumber
  hi Normal guifg=#ff99a8 ctermfg=218 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi NormalFloat guifg=#ffb3b3 ctermfg=218 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi NormalNC guifg=#ff99a8 ctermfg=218 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi FloatBorder guifg=#ff5c7a ctermfg=204 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi LineNr guifg=#ff5c7a ctermfg=204 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi CursorLine guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold cterm=Bold
  hi CursorLineSign guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold cterm=Bold
  hi CursorLineNr guifg=#ff99a8 ctermfg=218 guibg=bg3 ctermbg=234 gui=Bold cterm=Bold
  hi ColorColumn guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi Cursor guibg=#ff99a8 ctermbg=218 gui=NONE cterm=NONE
  hi CursorIM guifg=#ff99a8 ctermfg=218 guibg=#f84555 ctermbg=197 gui=NONE cterm=NONE
  hi CursorColumn guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi Directory guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE ctermfg=NONE guibg=#313244 ctermbg=236 gui=Bold cterm=Bold
  hi DiffChange guifg=NONE ctermfg=NONE guibg=bg2 ctermbg=236 gui=Bold cterm=Bold
  hi DiffDelete guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239
  hi DiffText guifg=NONE ctermfg=NONE guibg=#313244 ctermbg=236 gui=Bold,Italic,underline cterm=Bold,Italic,underline
  hi ErrorMsg guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi VertSplit guifg=#ff4b66 ctermfg=197 gui=NONE cterm=NONE
  hi Folded guifg=#ff4b66 ctermfg=197 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi FoldColumn guifg=#d73442 ctermfg=161 guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi SignColumn guifg=NONE ctermfg=NONE guibg=bg4 ctermbg=233 gui=NONE cterm=NONE
  hi IncSearch guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold,undercurl,Italic cterm=Bold,undercurl,Italic guisp=#ff7a91
  hi MatchParen guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#ff7a91
  hi ModeMsg guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#9399b2 ctermfg=246 gui=NONE cterm=NONE
  hi PMenu guifg=#ff99a8 ctermfg=218 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi PMenuSel guifg=#ff99a8 ctermfg=218 guibg=#45475a ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuKind guifg=#ff99a8 ctermfg=218 guibg=#45475a ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PMenuExtra guifg=#ff5c7a ctermfg=204 guibg=#45475a ctermbg=239 gui=Bold,Italic cterm=Bold,Italic
  hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#9399b2 ctermbg=246 gui=NONE cterm=NONE
  hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#f84555 ctermbg=197 gui=NONE cterm=NONE
  hi MsgArea guifg=#ff99a8 ctermfg=218 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi Question guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Search guifg=NONE ctermfg=NONE guibg=#45475a ctermbg=239 gui=Bold,underline,Italic cterm=Bold,underline,Italic guisp=#ff4b66
  hi SpecialKey guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi SpellBad guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#e04f5f
  hi SpellCap guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=undercurl cterm=undercurl guisp=#ff7a91
  hi StatusLine guifg=#ff99a8 ctermfg=218 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi StatusLineNC guifg=#ff4b66 ctermfg=197 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi TabLine guifg=#ff5c7a ctermfg=204 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi TabLineFill guifg=#d73442 ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi TabLineSel guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=underline cterm=underline
  hi Title guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi Visual guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi VisualNOS guifg=#9399b2 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#f84555 ctermfg=197 gui=undercurl cterm=undercurl guisp=#e04f5f
  hi WildMenu guifg=#ff4b66 ctermfg=197 guibg=bg ctermbg=234 gui=NONE cterm=NONE
  hi EndOfBuffer guifg=#9399b2 ctermfg=246 guibg=bg3 ctermbg=234 gui=NONE cterm=NONE
  hi Comment guifg=#ff99a8 ctermfg=218 gui=Italic cterm=Italic
  hi Constant guifg=#ffb3b3 ctermfg=218 gui=NONE cterm=NONE
  hi String guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi Character guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Boolean guifg=#e04f5f ctermfg=167 gui=Italic cterm=Italic
  hi Number guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi Float guifg=#f84555 ctermfg=197 gui=NONE cterm=NONE
  hi Identifier guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi Function guifg=#ff5c7a ctermfg=204 gui=Bold cterm=Bold
  hi Statement guifg=#f84555 ctermfg=197 gui=Bold cterm=Bold
  hi Conditional guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#ff4b66 ctermfg=197 gui=Italic cterm=Italic
  hi Label guifg=#ff7a91 ctermfg=210 gui=Italic cterm=Italic
  hi Operator guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi Keyword guifg=#ff5c7a ctermfg=204 gui=Bold,Italic cterm=Bold,Italic
  hi Exception guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi PreProc guifg=#ff4b66 ctermfg=197 gui=NONE cterm=NONE

  hi Include guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi Define guifg=#e04f5f ctermfg=167 gui=Bold cterm=Bold
  hi Macro guifg=#ff4b66 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi PreCondit guifg=#ffb3b3 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Type guifg=#ff7a91 ctermfg=210 gui=Bold cterm=Bold
  hi StorageClass guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi Structure guifg=#ff99a8 ctermfg=218 gui=Bold cterm=Bold
  hi Typedef guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Special guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi SpecialChar guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

  hi Tag guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi htmlTag guifg=#9399b2 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link htmlEndTag htmlTag

  hi Delimiter guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi SpecialComment guifg=#9399b2 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Debug guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Underlined guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#9399b2 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi Error guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=Bold,undercurl cterm=Bold,undercurl guisp=#e04f5f
  hi Todo guifg=#ff4b66 ctermfg=197 guibg=#45475a ctermbg=239 gui=Bold,underline cterm=Bold,underline
  hi typescriptParens guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLogicSymbols cssImportant
  hi typescriptReserved guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptLabel DiagnosticHintFloating
  hi typescriptFuncName guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptCall jsonNumber
  hi link typescriptVariable typescriptReserved
  hi link typescriptBinaryOp cssImportant
  hi link typescriptAssign cssImportant
  hi typescriptObjectLabel guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptDotNotation cssImportant
  hi link typescriptOperator cssImportant
  hi link typescriptTernaryOp cssImportant
  hi link typescriptTypeAnnotation cssImportant
  hi link typescriptIdentifierName cssAttr
  hi typescriptArrowFuncArg guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptParamImpl jsonNumber
  hi link typescriptRepeat cssClassName
  hi link typescriptStatementKeyword SpellCap
  hi link typescriptAliasKeyword cssClassName
  hi typescriptInterfaceKeyword guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link typescriptTemplateSB cssImportant
  hi link typescriptMemberOptionality jsonNumber
  hi link typescriptOptionalMark jsonNumber
  hi link typescriptUnaryOp cssImportant
  hi link typescriptBranch Statement
  hi link pugJavascriptOutputChar jsonNumber
  hi fzf1 guifg=#ff7a91 ctermfg=210 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf2 guifg=#ff99a8 ctermfg=218 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi fzf3 guifg=#e04f5f ctermfg=167 guibg=bg2 ctermbg=236 gui=NONE cterm=NONE
  hi link NERDTreeHelp cssAttr
  hi link NERDTreeHelpKey cssClassName
  hi link NERDTreeHelpCommand jsonNumber
  hi link NERDTreeHelpTitle cssProp
  hi link NERDTreeUp cssClassName
  hi link NERDTreeCWD SpellCap
  hi link NERDTreeOpenable cssImportant
  hi link NERDTreeClosable jsonNumber
  hi link javascriptOpSymbol cssImportant
  hi javascriptDocNotation guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocNamedParamType Question
  hi javascriptDocParamName guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link javascriptDocParamType Question
  hi link javascriptTemplateSB cssImportant
  hi link javascriptRepeat cssClassName
  hi link javascriptObjectLabelColon cssImportant
  hi link javascriptObjectMethodName cssClassName
  hi link javascriptFuncName cssClassName
  hi diffRemoved guifg=#e04f5f ctermfg=167 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffChanged guifg=#ff5c7a ctermfg=204 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffAdded guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffLine guifg=#ff99a8 ctermfg=218 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffSubname guifg=#ff7a91 ctermfg=210 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
  hi diffComment guifg=#f84555 ctermfg=197 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi BufferLineIndicatorSelected guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BufferLineBufferSelected guifg=#ff7a91 ctermfg=210 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi link BufferLineBuffer Comment
  hi link BufferLineBufferVisible Comment
  hi BufferLineFill guifg=#45475a ctermfg=239 guibg=#45475a ctermbg=239 gui=NONE cterm=NONE
  hi BuffetCurrentBuffer guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BuffetActiveBuffer guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BuffetBuffer guibg=#ff99a8 ctermbg=218 gui=NONE cterm=NONE
  hi BuffetModCurrentBuffer guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BuffetModActiveBuffer guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BuffetModBuffer guifg=#45475a ctermfg=239 guibg=#ff5c7a ctermbg=204 gui=NONE cterm=NONE
  hi BuffetTrunc guibg=#ff99a8 ctermbg=218 gui=NONE cterm=NONE
  hi BuffetTab guibg=#ff7a91 ctermbg=210 gui=NONE cterm=NONE
  hi CmpItemAbbrDeprecated guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi link CmpItemAbbrMatch CocHintSign
  hi CmpItemAbbrMatchFuzzy guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi CmpItemKindVariable guifg=#ff99a8 ctermfg=218 gui=NONE cterm=NONE
  hi CmpItemKindInterface guifg=#ff7a91 ctermfg=210 gui=NONE cterm=NONE
  hi CmpItemKindText guifg=#ffb3b3 ctermfg=218 gui=NONE cterm=NONE
  hi CmpItemKindFunction guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi CmpItemKindMethod guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi CmpItemKindKeyword guifg=#ff5c7a ctermfg=204 gui=NONE cterm=NONE
  hi link elmDelimiter cssAttr
  hi link elmOperator cssImportant
  hi link helpHyperTextEntry cssClassName
  hi link helpHeadline SpellCap
  hi helpSectionDelim guifg=#d73442 ctermfg=161 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
  hi link helpNote cssImportant
  hi link xmlNamespace jsonNumber
  hi link xmlAttribPunct cssImportant
  hi link xmlProcessingDelim cssImportant
endif
if has('terminal')
  let g:terminal_ansi_colors = [
  \ "#1e1e2e",
  \ "#e04f5f",
  \ "#ff7a91",
  \ "#ff7a91",
  \ "#ff99a8",
  \ "#ff99a8",
  \ "#ff99a8",
  \ "#313244",
  \ "#1e1e2e",
  \ "#f84555",
  \ "#ffb3b3",
  \ "#ffb3b3",
  \ "#ff4b66",
  \ "#ffb3b3",
  \ "#ff5c7a",
  \ "#ff99a8"
  \ ]
endif

if has('nvim')
  let g:terminal_color_foreground = "#ff99a8"
  let g:terminal_color_background = "#1e1e2e"
  let g:terminal_color_0 = "#1e1e2e"
  let g:terminal_color_1 = "#e04f5f"
  let g:terminal_color_2 = "#ff7a91"
  let g:terminal_color_3 = "#ff7a91"
  let g:terminal_color_4 = "#ff99a8"
  let g:terminal_color_5 = "#ff99a8"
  let g:terminal_color_6 = "#ff99a8"
  let g:terminal_color_7 = "#313244"
  let g:terminal_color_8 = "#1e1e2e"
  let g:terminal_color_9 = "#f84555"
  let g:terminal_color_10 = "#ffb3b3"
  let g:terminal_color_11 = "#ffb3b3"
  let g:terminal_color_12 = "#ff4b66"
  let g:terminal_color_13 = "#ffb3b3"
  let g:terminal_color_14 = "#ff5c7a"
  let g:terminal_color_15 = "#ff99a8"
endif
