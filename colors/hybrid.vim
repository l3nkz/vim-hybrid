" Set Up: {{{
" ----------------------------------------------------------------------------
hi clear

if exists("syntax_on")
  syntax reset
endif

let s:style = &background

let g:colors_name = "hybrid"
"}}}

" Default Settings: {{{
" ----------------------------------------------------------------------------
if !exists("g:hybrid_use_reduced_contrast")
    let g:hybrid_use_reduced_contrast = 0
endif

if !exists("g:hybrid_use_term_colors")
    let g:hybrid_use_term_colors = 0
endif
" }}}

" GUI And CTerm Palettes: {{{
" ----------------------------------------------------------------------------
let s:palette = {'gui' : {} , 'cterm' : {}}

if g:hybrid_use_reduced_contrast == 1
  let s:gui_background = "#232c31"
  let s:gui_selection  = "#425059"
  let s:gui_line       = "#2d3c46"
  let s:gui_comment    = "#6c7a80"
else
  let s:gui_background = "#1d1f21"
  let s:gui_selection  = "#373b41"
  let s:gui_line       = "#282a2e"
  let s:gui_comment    = "#707880"
endif

let s:palette.gui.background = { 'dark' : s:gui_background , 'light' : "#e4e4e4" }
let s:palette.gui.foreground = { 'dark' : "#c5c8c6"        , 'light' : "#000000" }
let s:palette.gui.selection  = { 'dark' : s:gui_selection  , 'light' : "#bcbcbc" }
let s:palette.gui.line       = { 'dark' : s:gui_line       , 'light' : "#d0d0d0" }
let s:palette.gui.comment    = { 'dark' : s:gui_comment    , 'light' : "#5f5f5f" }
let s:palette.gui.red        = { 'dark' : "#cc6666"        , 'light' : "#5f0000" }
let s:palette.gui.orange     = { 'dark' : "#de935f"        , 'light' : "#875f00" }
let s:palette.gui.yellow     = { 'dark' : "#f0c674"        , 'light' : "#5f5f00" }
let s:palette.gui.green      = { 'dark' : "#b5bd68"        , 'light' : "#005f00" }
let s:palette.gui.aqua       = { 'dark' : "#8abeb7"        , 'light' : "#005f5f" }
let s:palette.gui.blue       = { 'dark' : "#81a2be"        , 'light' : "#00005f" }
let s:palette.gui.purple     = { 'dark' : "#b294bb"        , 'light' : "#5f005f" }
let s:palette.gui.window     = { 'dark' : "#303030"        , 'light' : "#9e9e9e" }
let s:palette.gui.darkcolumn = { 'dark' : "#1c1c1c"        , 'light' : "#808080" }
let s:palette.gui.addbg      = { 'dark' : "#5F875F"        , 'light' : "#d7ffd7" }
let s:palette.gui.addfg      = { 'dark' : "#d7ffaf"        , 'light' : "#005f00" }
let s:palette.gui.changebg   = { 'dark' : "#5F5F87"        , 'light' : "#d7d7ff" }
let s:palette.gui.changefg   = { 'dark' : "#d7d7ff"        , 'light' : "#5f005f" }
let s:palette.gui.delbg      = { 'dark' : "#cc6666"        , 'light' : "#ffd7d7" }
let s:palette.gui.darkblue   = { 'dark' : "#00005f"        , 'light' : "#d7ffd7" }
let s:palette.gui.darkcyan   = { 'dark' : "#005f5f"        , 'light' : "#005f00" }
let s:palette.gui.darkred    = { 'dark' : "#5f0000"        , 'light' : "#d7d7ff" }
let s:palette.gui.darkpurple = { 'dark' : "#5f005f"        , 'light' : "#5f005f" }

if g:hybrid_use_term_colors == 1
  let s:cterm_foreground = "15"
  let s:cterm_selection  = "8"
  let s:cterm_line       = "0"
  let s:cterm_comment    = "7"
  let s:cterm_red        = "9"
  let s:cterm_orange     = "3"
  let s:cterm_yellow     = "11"
  let s:cterm_green      = "10"
  let s:cterm_aqua       = "14"
  let s:cterm_blue       = "12"
  let s:cterm_purple     = "13"
  let s:cterm_delbg      = "9"
else
  let s:cterm_foreground = "250"
  let s:cterm_selection  = "237"
  let s:cterm_line       = "235"
  let s:cterm_comment    = "243"
  let s:cterm_red        = "167"
  let s:cterm_orange     = "173"
  let s:cterm_yellow     = "221"
  let s:cterm_green      = "143"
  let s:cterm_aqua       = "109"
  let s:cterm_blue       = "110"
  let s:cterm_purple     = "139"
  let s:cterm_delbg      = "167"
endif

let s:palette.cterm.background = { 'dark' : "234"              , 'light' : "254" }
let s:palette.cterm.foreground = { 'dark' : s:cterm_foreground , 'light' : "16"  }
let s:palette.cterm.window     = { 'dark' : "236"              , 'light' : "247" }
let s:palette.cterm.selection  = { 'dark' : s:cterm_selection  , 'light' : "250" }
let s:palette.cterm.line       = { 'dark' : s:cterm_line       , 'light' : "252" }
let s:palette.cterm.comment    = { 'dark' : s:cterm_comment    , 'light' : "59"  }
let s:palette.cterm.red        = { 'dark' : s:cterm_red        , 'light' : "52"  }
let s:palette.cterm.orange     = { 'dark' : s:cterm_orange     , 'light' : "94"  }
let s:palette.cterm.yellow     = { 'dark' : s:cterm_yellow     , 'light' : "58"  }
let s:palette.cterm.green      = { 'dark' : s:cterm_green      , 'light' : "22"  }
let s:palette.cterm.aqua       = { 'dark' : s:cterm_aqua       , 'light' : "23"  }
let s:palette.cterm.blue       = { 'dark' : s:cterm_blue       , 'light' : "17"  }
let s:palette.cterm.purple     = { 'dark' : s:cterm_purple     , 'light' : "53"  }
let s:palette.cterm.darkcolumn = { 'dark' : "234"              , 'light' : "244" }
let s:palette.cterm.addbg      = { 'dark' : "65"               , 'light' : "194" }
let s:palette.cterm.addfg      = { 'dark' : "193"              , 'light' : "22"  }
let s:palette.cterm.changebg   = { 'dark' : "60"               , 'light' : "189" }
let s:palette.cterm.changefg   = { 'dark' : "189"              , 'light' : "53"  }
let s:palette.cterm.delbg      = { 'dark' : s:cterm_delbg      , 'light' : "224" }
let s:palette.cterm.darkblue   = { 'dark' : "17"               , 'light' : "194" }
let s:palette.cterm.darkcyan   = { 'dark' : "24"               , 'light' : "22"  }
let s:palette.cterm.darkred    = { 'dark' : "52"               , 'light' : "189" }
let s:palette.cterm.darkpurple = { 'dark' : "53"               , 'light' : "53"  }
"}}}

" Formatting Options: {{{
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"
"}}}

" Highlighting Primitives: {{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'darkcolumn')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')
call s:build_prim('bg', 'darkblue')
call s:build_prim('bg', 'darkcyan')
call s:build_prim('bg', 'darkred')
call s:build_prim('bg', 'darkpurple')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'darkcolumn')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')
call s:build_prim('fg', 'darkblue')
call s:build_prim('fg', 'darkcyan')
call s:build_prim('fg', 'darkred')
call s:build_prim('fg', 'darkpurple')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none       = ' guisp=". s:none                            ."'"
exe "let s:sp_foreground = ' guisp=". s:palette.gui.foreground[s:style] ."'"
exe "let s:sp_background = ' guisp=". s:palette.gui.background[s:style] ."'"
exe "let s:sp_selection  = ' guisp=". s:palette.gui.selection[s:style]  ."'"
exe "let s:sp_line       = ' guisp=". s:palette.gui.line[s:style]       ."'"
exe "let s:sp_comment    = ' guisp=". s:palette.gui.comment[s:style]    ."'"
exe "let s:sp_red        = ' guisp=". s:palette.gui.red[s:style]        ."'"
exe "let s:sp_orange     = ' guisp=". s:palette.gui.orange[s:style]     ."'"
exe "let s:sp_yellow     = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
exe "let s:sp_green      = ' guisp=". s:palette.gui.green[s:style]      ."'"
exe "let s:sp_aqua       = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
exe "let s:sp_blue       = ' guisp=". s:palette.gui.blue[s:style]       ."'"
exe "let s:sp_purple     = ' guisp=". s:palette.gui.purple[s:style]     ."'"
exe "let s:sp_window     = ' guisp=". s:palette.gui.window[s:style]     ."'"
exe "let s:sp_addbg      = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
exe "let s:sp_addfg      = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
exe "let s:sp_changebg   = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
exe "let s:sp_changefg   = ' guisp=". s:palette.gui.changefg[s:style]   ."'"
exe "let s:sp_darkblue   = ' guisp=". s:palette.gui.darkblue[s:style]   ."'"
exe "let s:sp_darkcyan   = ' guisp=". s:palette.gui.darkcyan[s:style]   ."'"
exe "let s:sp_darkred    = ' guisp=". s:palette.gui.darkred[s:style]    ."'"
exe "let s:sp_darkpurple = ' guisp=". s:palette.gui.darkpurple[s:style] ."'"

"}}}

" Vim Highlighting: {{{
" ----------------------------------------------------------------------------
"   ColorColumn
"   Conceal
"   Cursor
"   CursorIM
exe "hi! CursorColumn"  .s:fg_none          .s:bg_line          .s:fmt_none
exe "hi! CursorLine"    .s:fg_none          .s:bg_line          .s:fmt_none
exe "hi! Directory"     .s:fg_blue          .s:bg_none          .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg         .s:bg_addbg         .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg      .s:bg_changebg      .s:fmt_none
exe "hi! DiffDelete"    .s:fg_foreground    .s:bg_delbg         .s:fmt_none
exe "hi! DiffText"      .s:fg_blue          .s:bg_darkblue      .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_red           .s:bg_none          .s:fmt_bold
exe "hi! VertSplit"     .s:fg_window        .s:bg_none          .s:fmt_none
exe "hi! Folded"        .s:fg_comment       .s:bg_darkcolumn    .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none          .s:bg_darkcolumn    .s:fmt_none
exe "hi! SignColumn"    .s:fg_none          .s:bg_darkcolumn    .s:fmt_none
exe "hi! Incsearch"     .s:fg_comment       .s:bg_yellow        .s:fmt_none
exe "hi! LineNr"        .s:fg_selection     .s:bg_none          .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow        .s:bg_none          .s:fmt_none
exe "hi! MatchParen"    .s:fg_orange        .s:bg_none          .s:fmt_bold
exe "hi! ModeMsg"       .s:fg_green         .s:bg_none          .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green         .s:bg_none          .s:fmt_none
exe "hi! NonText"       .s:fg_selection     .s:bg_none          .s:fmt_none
"   Normal -- see later
exe "hi! Pmenu"         .s:fg_foreground    .s:bg_selection     .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground    .s:bg_selection     .s:fmt_revr
"   PmenuSbar
"   PmenuThumb
exe "hi! Question"      .s:fg_green         .s:bg_none          .s:fmt_none
exe "hi! Search"        .s:fg_comment       .s:bg_yellow        .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection     .s:bg_none          .s:fmt_none
exe "hi! SpellBad"      .s:fg_red           .s:bg_none          .s:fmt_undr
exe "hi! SpellCap"      .s:fg_blue          .s:bg_none          .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua          .s:bg_none          .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple        .s:bg_none          .s:fmt_undr
exe "hi! StatusLine"    .s:fg_comment       .s:bg_background    .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_window        .s:bg_comment       .s:fmt_revr
exe "hi! TabLine"       .s:fg_none          .s:bg_none          .s:fmt_none
exe "hi! TabLineFill"   .s:fg_none          .s:bg_none          .s:fmt_none
exe "hi! TabLineSel"    .s:fg_green         .s:bg_none          .s:fmt_revb
exe "hi! Title"         .s:fg_yellow        .s:bg_none          .s:fmt_none
exe "hi! Visual"        .s:fg_none          .s:bg_selection     .s:fmt_none
"   VisualNOS
exe "hi! WarningMsg"    .s:fg_orange        .s:bg_none          .s:fmt_bold
"   WildMenu

" Use defined custom background color for terminal Vim.
if !has('gui_running') &&  g:hybrid_use_term_colors == 1
  let s:bg_normal = s:bg_none
else
  let s:bg_normal = s:bg_background
endif
exe "hi! Normal"        .s:fg_foreground    .s:bg_normal        .s:fmt_none
"}}}

" Syntax Highlighting: {{{
" ----------------------------------------------------------------------------
" Generic: {{{
" -------------
exe "hi! Comment"       .s:fg_comment       .s:bg_none          .s:fmt_none
exe "hi! Constant"      .s:fg_red           .s:bg_none          .s:fmt_none
exe "hi! String"        .s:fg_green         .s:bg_none          .s:fmt_none
"   Character
"   Number
"   Boolean
"   Float
exe "hi! Identifier"    .s:fg_purple        .s:bg_none          .s:fmt_none
exe "hi! Function"      .s:fg_yellow        .s:bg_none          .s:fmt_none
exe "hi! Statement"     .s:fg_blue          .s:bg_none          .s:fmt_none
"   Conditional
"   Repeat
"   Label
exe "hi! Operator"      .s:fg_aqua          .s:bg_none          .s:fmt_none
"   Keyword
"   Exception
exe "hi! PreProc"       .s:fg_aqua          .s:bg_none          .s:fmt_none
"   Include
"   Define
"   Macro
"   PreCondit
exe "hi! Type"          .s:fg_orange        .s:bg_none          .s:fmt_none
"   StorageClass
exe "hi! Structure"     .s:fg_aqua          .s:bg_none          .s:fmt_none
"   Typedef
exe "hi! Special"       .s:fg_green         .s:bg_none          .s:fmt_none
"   SpecialChar
"   Tag
"   Delimiter
"   SpecialComment
"   Debug
exe "hi! Underlined"    .s:fg_blue          .s:bg_none          .s:fmt_none
exe "hi! Ignore"        .s:fg_none          .s:bg_none          .s:fmt_none
exe "hi! Error"         .s:fg_red           .s:bg_none          .s:fmt_none
exe "hi! Todo"          .s:fg_addfg         .s:bg_none          .s:fmt_none
" }}}

" Quickfix Window: {{{
" -------------
exe "hi! qfLineNr"      .s:fg_yellow        .s:bg_none          .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"
" }}}

" Diff Mode: {{{
" -------------
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded Special
"   diffLine
"   diffSubname
"   diffComment
" }}}

" YouCompleteMe: {{{
exe "hi! YcmErrorSign"  .s:fg_red           .s:bg_background    .s:fmt_bold
exe "hi! YcmWarningSign".s:fg_yellow        .s:bg_background    .s:fmt_bold
"   YcmErrorLine
"   YcmWarningLine
exe "hi! YcmErrorSection".s:fg_red          .s:bg_none          .s:fmt_ital
exe "hi! YcmWarningSection".s:fg_yellow     .s:bg_none          .s:fmt_ital
" }}}
" }}}

" Tear Down: {{{
let &background = s:style
" }}}
