if exists("b:current_syntax")
    finish
endif

setlocal background=dark

syn cluster christmastreeGlitters contains=christmastreeGlitterSmall,christmastreeGlitterLarge
syn match christmastreeStar /☆/
syn region christmastreeLeaves start=/\s\@<=[o.]/ end=/[o.]\%(\s\|\_$\)\@=/ contains=@christmastreeGlitters oneline keepend
syn match christmastreeGlitterLarge /o/ contained containedin=christmastreeLeaves
syn match christmastreeGlitterSmall /\*/ contained containedin=christmastreeLeaves
syn match christmastreeFlowerpot /\[_\+\]/
syn match christmastreeFlowerpot /\\_\+\//
syn match christmastreeSnow /\*/ containedin=NONE

hi def christmastreeYellow term=NONE ctermfg=226 guifg=yellow
hi def christmastreeGreen term=NONE ctermfg=47 guifg=lightgreen
hi def christmastreeRed term=NONE ctermfg=196 guifg=red
hi def christmastreeBrown term=NONE ctermfg=173 guifg=#bf8040
hi def christmastreeGold term=NONE ctermfg=220 guifg=gold
hi def christmastreeWhite term=NONE ctermfg=254 guifg=white
hi def christmastreePurple term=NONE ctermfg=147 guifg=purple
hi def christmastreeSkyblue term=NONE ctermfg=117 guifg=skyblue
hi def christmastreePink term=NONE ctermfg=168 guifg=pink
hi def christmastreeLight term=NONE ctermfg=229 guifg=lightyellow
hi def christmastreeOrange term=NONE ctermfg=208 guifg=orange

hi def link christmastreeStar christmastreeYellow
hi def link christmastreeLeaves christmastreeGreen
hi def link christmastreeGlitterSmall christmastreeRed
hi def link christmastreeGlitterLarge christmastreeGold
hi def link christmastreeFlowerpot christmastreeBrown
hi def link christmastreeSnow christmastreeWhite

let b:current_syntax = "christmastree"
