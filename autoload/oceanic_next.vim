let g:oceanic_next_terminal_italic = get(g:, 'oceanic_next_terminal_italic', 0)
let s:italic = ""

if g:oceanic_next_terminal_italic == 1
  let s:italic = "italic"
endif

let g:oceanic_next_terminal_bold = get(g:, 'oceanic_next_terminal_bold', 0)
let s:bold = ""
if g:oceanic_next_terminal_bold == 1
 let s:bold = "bold"
endif

function! s:hi(group, fg, bg, attr, attrsp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction


function! oceanic_next#highlight( base00, base01, base02, base03, base04, base05, base06, base07, red, orange, yellow, green, cyan, blue, purple, brown, white, none) abort

  " ======================================================================
  " 1. UI AND GENERAL HIGHLIGHTS
  " ======================================================================
  call s:hi('Normal',                            a:base05, a:base01, '',          '')
  call s:hi('Bold',                              '',       '',       s:bold,      '')
  call s:hi('Italic',                            '',       '',       s:italic,    '')
  call s:hi('Directory',                         a:blue,   '',       '',          '')
  call s:hi('ErrorMsg',                          a:red,    a:base00, '',          '')
  call s:hi('Folded',                            a:base03, a:base01, s:italic,    '')
  call s:hi('IncSearch',                         a:base01, a:orange, 'NONE',      '')
  call s:hi('MatchParen',                        a:base05, a:base03, '',          '')
  call s:hi('Search',                            a:base03, a:yellow, '',          '')
  call s:hi('Visual',                            '',       a:base02, '',          '')
  call s:hi('Cursor',                            a:base00, a:base05, '',          '')
  call s:hi('LineNr',                            a:base03, a:base01, '',          '')
  call s:hi('StatusLine',                        a:base01, a:base03, 'NONE',      '')
  call s:hi('StatusLineNC',                      a:base03, a:base01, 'NONE',      '')
  call s:hi('VertSplit',                         a:base01, a:base00, 'NONE',      '')
  call s:hi('CursorLine',                        '',       a:base02, 'None',      '')
  call s:hi('CursorLineNr',                      a:base03, a:base02, '',          '')
  call s:hi('PMenu',                             a:base04, a:base02, '',          '')
  call s:hi('PMenuSel',                          a:base07, a:blue,   '',          '')
  call s:hi('Comment',                           a:base03, '',       s:italic,    '')
  call s:hi('String',                            a:green,  '',       '',          '')
  call s:hi('Number',                            a:orange, '',       '',          '')
  call s:hi('Float',                             a:orange, '',       '',          '')
  call s:hi('Boolean',                           a:orange, '',       '',          '')
  call s:hi('Constant',                          a:orange, '',       '',          '')
  call s:hi('Operator',                          a:white,  '',       '',          '')

  " ======================================================================
  " 2. LEGACY SYNTAX HIGHLIGHTS (as a fallback)
  " ======================================================================
  " Set these to sensible defaults. TreeSitter will override them.
  call s:hi('Keyword',                           a:purple, '',       '',          '')
  call s:hi('Statement',                         a:purple, '',       '',          '')
  call s:hi('Conditional',                       a:purple, '',       '',          '')
  call s:hi('Exception',                         a:purple, '',       '',          '')
  call s:hi('Include',                           a:base05, '',       '',          '') " Set to text color
  call s:hi('Identifier',                        a:base05, '',       '',          '') " Set to text color
  call s:hi('Function',                          a:base05, '',       '',          '') " Set to text color
  call s:hi('Type',                              a:base05, '',       '',          '') " Set to text color
  call s:hi('pythonBuiltin',                     a:cyan,   '',       '',          '')

  " ======================================================================
  " 3. TREESITTER HIGHLIGHTS (MUST BE LAST TO HAVE PRIORITY)
  " ======================================================================
	if has('nvim')
    " Keywords (Purple)
    call s:hi('@keyword',                          a:purple, '',       '',          '')
    call s:hi('@conditional',                      a:purple, '',       '',          '')
    call s:hi('@exception',                        a:purple, '',       '',          '')
    call s:hi('@keyword.operator',                 a:purple, '',       '',          '')

    " Definitions (Blue)
    call s:hi('@constructor',                      a:blue,   '',       '',          '')
    call s:hi('@function',                         a:blue,   '',       '',          '')
    call s:hi('@method',                           a:blue,   '',       '',          '')

    " Type Hints & Built-ins (Cyan)
    call s:hi('@type.builtin',                     a:cyan,   '',       '',          '')

    " General Text, Variables, Imports, Types (White)
    call s:hi('@variable',                         a:base05, '',       '',          '')
    call s:hi('@parameter',                        a:base05, '',       '',          '')
    call s:hi('@property',                         a:base05, '',       '',          '')
    call s:hi('@type',                             a:base05, '',       '',          '')
    call s:hi('@namespace',                        a:base05, '',       '',          '')
    call s:hi('@include',                          a:base05, '',       '',          '')

    " Strings, Numbers, Constants (Green/Orange)
    call s:hi('@string',                           a:green,  '',       '',          '')
    call s:hi('@number',                           a:orange, '',       '',          '')
    call s:hi('@boolean',                          a:orange, '',       '',          '')
    call s:hi('@constant.builtin',                 a:orange, '',       '',          '')

    " Operators & Punctuation (White)
    call s:hi('@operator',                         a:white,  '',       '',          '')
    call s:hi('@punctuation.bracket',              a:base05, '',       '',          '')
    call s:hi('@punctuation.delimiter',            a:base05, '',       '',          '')

    " Comments (Grey)
    call s:hi('@comment',                          a:base03, '',       s:italic,    '')
  endif

endfunction
