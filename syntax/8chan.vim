" Vim syntax file
" Language:     8chan
" Maintainer:   Kompowiec2 <chipteken@gmail.com>
" Last Change:  2015 September 30

if !exists("main_syntax")
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif
let main_syntax = 'chan'
endif

syntax case ignore

syn region ChanSpoiler		start=/**/	end=/**/
syn region ChanItalic		start=/''/	end=/''/
syn region ChanBold		start=/'''/	end=/'''/
syn region ChanUnderline	start=/__/	end=/__/
syn region ChanHeading		start=/==/	end=/==/
syn region ChanStrikethrough	start=/~~/	end=/~~/
syn region ChanASCII		start=/\[aa\]/	end=/\[\/aa\]/
syn region ChanCode		start=/\[code\]/	end=/\[\/code\]/
syn region ChanSpoilers		start=/\[spoiler\]/ end=/\[\/spoiler\]/

if version >= 508 || !exists("did_xxd_syntax_inits")
  if version < 508
    let did_xxd_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

 HiLink ChanSpoiler	TODO
 HiLink ChanItalic 	Italic
 HiLink ChanBold 	Bold
 HiLink ChanUnderline	Underline
 HiLink ChanHeading	Special
 HiLink ChanASCII	PreProc
 HiLink ChanCode	Constant
 HiLink ChanSpoilers	TODO
 delcommand HiLink
endif
