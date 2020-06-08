" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Original:	Koehler, by Ron Aaron <ron@ronware.org>
" Last Change:	2016 Sep 04
" Modified by Geir Damstuen

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "kuhler"
hi Normal	  guifg=#a3b4b6
hi Scrollbar	  guifg=darkcyan guibg=cyan
hi Menu		  guifg=black guibg=cyan
hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText	  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#d75f5f
hi Directory	  term=bold  cterm=bold  ctermfg=brown  guifg=#cc8000
hi ErrorMsg	  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guibg=#d75f5f guifg=#2a2a2a
hi Search	  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=#af0000
hi MoreMsg	  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg	  term=bold  cterm=bold  gui=bold
hi LineNr	  term=underline  ctermfg=242 guifg=#6c6c6c
hi Question	  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermbg=235 ctermfg=246 guibg=#262626 guifg=#949494
hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title	  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual	  term=reverse	cterm=reverse  gui=reverse
hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
hi Cursor	  guifg=bg	guibg=Green
hi Comment	  term=bold  cterm=bold ctermfg=cyan  guifg=#80a0ff
hi Constant	  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi Special	  term=bold  cterm=bold ctermfg=red  guifg=Orange
hi Identifier	  term=underline   ctermfg=brown  guifg=#d75f5f
hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc	  term=underline  ctermfg=darkmagenta   guifg=#ff80ff
hi Type		  term=underline  cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error	  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=#ff5f5f
hi Todo		  term=standout  ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
hi CursorLine	  term=underline  ctermbg=234 cterm=bold guibg=#1c1c1c
hi CursorLineNr	  term=underline  cterm=bold ctermfg=248 ctermbg=234 guifg=#a8a8a8 guibg=#1c1c1c
hi CursorColumn	  term=underline  ctermbg=234 cterm=bold guibg=#1c1c1c
hi MatchParen	  term=reverse  ctermfg=blue guibg=Blue
hi VertSplit      cterm=bold ctermbg=235 ctermfg=238 guibg=#262626 guifg=#444444
hi WildMenu       term=standout cterm=bold ctermbg=Green ctermfg=Black guibg=#a1b56c guifg=Black
hi TabLine	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Underlined	  term=underline cterm=bold,underline ctermfg=lightblue guifg=lightblue gui=bold,underline
hi Ignore	  ctermfg=black ctermbg=black guifg=black guibg=black
hi EndOfBuffer	  term=bold  cterm=bold  ctermfg=darkred guifg=#d75f5f gui=bold
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
