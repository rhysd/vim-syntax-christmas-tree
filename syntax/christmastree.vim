if exists("b:current_syntax")
    finish
endif

syn match christmastreeStar /☆/
syn region christmastreeLeaves start=/\s\@<=[o.]/ end=/[o.]\%(\s\|\_$\)\@=/ contains=christmastreeGlitter oneline
syn match christmastreeGlitter /\*/ contained containedin=christmastreeLeaves

hi def link christmastreeStar Special
hi def link christmastreeLeaves String
hi def link christmastreeGlitter Constant

let b:current_syntax = "christmastree"
