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

hi christmastreeYellow term=NONE ctermfg=226
hi christmastreeGreen term=NONE ctermfg=47
hi christmastreeRed term=NONE ctermfg=196
hi christmastreeBrown term=NONE ctermfg=173
hi christmastreeGold term=NONE ctermfg=220
hi christmastreeWhite term=NONE ctermfg=254
hi christmastreePurple term=NONE ctermfg=147
hi christmastreeSkyblue term=NONE ctermfg=117
hi christmastreePink term=NONE ctermfg=168
hi christmastreeLight term=NONE ctermfg=229
hi christmastreeOrange term=NONE ctermfg=208

hi def link christmastreeStar christmastreeYellow
hi def link christmastreeLeaves christmastreeGreen
hi def link christmastreeGlitterSmall christmastreeRed
hi def link christmastreeGlitterLarge christmastreeGold
hi def link christmastreeFlowerpot christmastreeBrown
hi def link christmastreeSnow christmastreeWhite

let b:current_syntax = "christmastree"
