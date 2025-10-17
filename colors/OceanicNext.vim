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
" Colors {{{
  let s:background = ['#304148', '237']
  let s:comment    = ['#65737E', '243']
  let s:text       = ['#f8f8f2', '231']
  let s:variable   = s:text " Carbon uses the same color for text and variables
  let s:white      = ['#ffffff', '15']
  let s:operator   = s:white

  let s:keyword    = ['#C594C5', '176'] " Also for attribute, tag
  let s:definition = ['#6699CC', '68']
  let s:property   = ['#99C794', '114'] " Also for string
  let s:string     = s:property
  let s:number     = ['#F99157', '209']
  let s:typehint   = ['#62b3b2', '73']   " Cyan for type hints

  " Background colors
  let s:base00 = ['#29383f', '236']  
  let s:base01 = ['#304148', '237']  
  let s:base02 = ['#4f5b66', '240']  
  let s:base03 = ['#65737E', '243']  
  let s:base04 = ['#a7adba', '145']  
  let s:base05 = ['#f8f8f2', '231']  
  let s:base06 = ['#ffffff', '15']   
  let s:base07 = ['#ffffff', '15']   

  " Mapping Start
  let s:red    = s:keyword  " We'll map unused colors to ones we have
  let s:orange = s:number
  let s:yellow = s:definition " Remap to something useful
  let s:green  = s:string
  let s:cyan   = s:typehint 
  let s:blue   = s:definition
  let s:purple = s:keyword
  let s:brown  = s:comment
  let s:none   = ['NONE',    'NONE']
  " Mapping End

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
