if exists("b:current_syntax")
    finish
endif

syn match christmastreeStar /☆/
syn region christmastreeLeaves start=/\s\@<=[o.]/ end=/[o.]\%(\s\|\_$\)\@=/ oneline

hi def link christmastreeStar Special
hi def link christmastreeLeaves String

let b:current_syntax = "christmastree"
