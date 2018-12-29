if (exists('g:loaded_christmastree') && g:loaded_christmastree) || &cp
    finish
endif

let s:tree_file = fnamemodify(expand('<sfile>'), ':p:h:h') . '/christmas-tree.txt'

function! s:open() abort
    execute 'botright vertical sview' s:tree_file
    setlocal nomodifiable
    wincmd p
endfunction
command! -nargs=0 -bar MerryChristmas call <SID>open()

let g:loaded_christmastree = 1
