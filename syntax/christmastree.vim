if exists("b:current_syntax")
    finish
endif

syn match christmastreeStar "☆"

hi def link christmastreeStar Special

let b:current_syntax = "christmastree"
