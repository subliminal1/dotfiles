" Vim color file
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last Change:	2001 Jul 23

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "terminal"


" UI
hi LineNr ctermbg=00 ctermfg=08
hi SignColumn ctermbg=00 ctermfg=08
hi VertSplit ctermbg=00 ctermfg=08 cterm=NONE
hi Visual ctermbg=11
hi StatusLine ctermfg=04
hi StatusLineNC ctermfg=11
hi SpellBad cterm=undercurl
hi SpellCap cterm=undercurl
hi SpellLocal cterm=undercurl
hi SpellRare cterm=undercurl


" vim: sw=2
