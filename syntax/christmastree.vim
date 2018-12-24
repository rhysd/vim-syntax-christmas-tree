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

hi def christmastreeYellow term=NONE ctermfg=226
hi def christmastreeGreen term=NONE ctermfg=47
hi def christmastreeRed term=NONE ctermfg=196
hi def christmastreeBrown term=NONE ctermfg=173
hi def christmastreeGold term=NONE ctermfg=220
hi def christmastreeWhite term=NONE ctermfg=254
hi def christmastreePurple term=NONE ctermfg=147
hi def christmastreeSkyblue term=NONE ctermfg=117
hi def christmastreePink term=NONE ctermfg=168
hi def christmastreeLight term=NONE ctermfg=229
hi def christmastreeOrange term=NONE ctermfg=208

hi def link christmastreeStar christmastreeYellow
hi def link christmastreeLeaves christmastreeGreen
hi def link christmastreeGlitterSmall christmastreeRed
hi def link christmastreeGlitterLarge christmastreeGold
hi def link christmastreeFlowerpot christmastreeBrown
hi def link christmastreeSnow christmastreeWhite

let b:current_syntax = "christmastree"
