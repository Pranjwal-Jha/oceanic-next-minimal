" ===============================================================
" OceanicNext
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  if exists('g:colors_name')
     highlight clear
     if exists('syntax_on')
       syntax reset
     endif
  endif
  let g:colors_name="OceanicNext"

"" Colors {{{
"  let s:base00 = ['#1b2b34', '235']
"  let s:base01 = ['#343d46', '237']
"  let s:base02 = ['#4f5b66', '240']
"  let s:base03 = ['#65737e', '243']
"  let s:base04 = ['#a7adba', '145']
"  let s:base05 = ['#c0c5ce', '251']
"  let s:base06 = ['#cdd3de', '252']
"  let s:base07 = ['#d8dee9', '253']
"  let s:red    = ['#ec5f67', '203']
"  let s:orange = ['#f99157', '209']
"  let s:yellow = ['#fac863', '221']
"  let s:green  = ['#99c794', '114']
"  let s:cyan   = ['#62b3b2', '73']
"  let s:blue   = ['#6699cc', '68']
"  let s:purple = ['#c594c5', '176']
"  let s:brown  = ['#ab7967', '137']
"  let s:white  = ['#ffffff', '15']
"  let s:none   = ['NONE',    'NONE']
"" }}}

" Colors {{{
  " --- Modified to match Carbon's Oceanic Next theme ---

  " Background colors
  let s:base00 = ['#29383f', '236']  " A bit darker than the main background for UI elements
  let s:base01 = ['#304148', '237']  " CHANGED: Main background to match Carbon
  let s:base02 = ['#4f5b66', '240']  " Kept for selections and other UI highlighting
  let s:base03 = ['#65737E', '243']  " MATCHES Carbon 'comment'

  " Foreground colors
  let s:base04 = ['#a7adba', '145']  " Kept for less important text
  let s:base05 = ['#f8f8f2', '231']  " CHANGED: Main text/variable color to match Carbon
  let s:base06 = ['#ffffff', '15']   " Kept for brighter text
  let s:base07 = ['#ffffff', '15']   " Kept for the brightest text

  " Syntax colors (most of these already match Carbon's theme)
  let s:red    = ['#ec5f67', '203']  " (Not in Carbon snippet, kept original)
  let s:orange = ['#F99157', '209']  " MATCHES Carbon 'number'
  let s:yellow = ['#fac863', '221']  " (Not in Carbon snippet, kept original)
  let s:green  = ['#99C794', '114']  " MATCHES Carbon 'string' and 'property'
  let s:cyan   = ['#62b3b2', '73']   " (Not in Carbon snippet, kept original)
  let s:blue   = ['#6699CC', '68']   " MATCHES Carbon 'definition'
  let s:purple = ['#C594C5', '176']  " MATCHES Carbon 'keyword', 'attribute', and 'tag'
  let s:brown  = ['#ab7967', '137']  " (Not in Carbon snippet, kept original)
  let s:white  = ['#ffffff', '15']   " MATCHES Carbon 'operator'
  let s:none   = ['NONE',    'NONE']
" }}}

call oceanic_next#highlight(
  \ s:base00,
  \ s:base01,
  \ s:base02,
  \ s:base03,
  \ s:base04,
  \ s:base05,
  \ s:base06,
  \ s:base07,
  \ s:red,
  \ s:orange,
  \ s:yellow,
  \ s:green,
  \ s:cyan,
  \ s:blue,
  \ s:purple,
  \ s:brown,
  \ s:white,
  \ s:none
  \)
set background=dark
