if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

function! s:christmas_glitter_tick(timer) abort
    let small = get(b:, 'christmastree_glitter_small_colors', ['Constant', 'Statement', 'Identifier', 'Ignore'])
    let large = get(b:, 'christmastree_glitter_large_colors', ['Identifier', 'Keyword', 'Type', 'Normal', 'Statement', 'Constant', 'Ignore'])

    let idx = s:tick % len(small)
    execute 'hi link christmastreeGlitterSmall' small[idx]

    let idx = s:tick % len(large)
    execute 'hi link christmastreeGlitterLarge' large[idx]

    let s:tick += 1
endfunction

function! s:christmas_glitter_start() abort
    if exists('s:timer_id')
        return
    endif
    let s:tick = 1
    let s:timer_id = timer_start(1000, function('s:christmas_glitter_tick'), {'repeat': -1})
endfunction

function! s:christmas_glitter_stop() abort
    if !exists('s:timer_id')
        return
    endif
    call timer_stop(s:timer_id)
    unlet! s:timer_id
    unlet! s:tick
endfunction

function! s:christmas_glitter_toggle() abort
    if !exists('s:timer_id')
        call s:christmas_glitter_start()
    else
        call s:christmas_glitter_stop()
    endif
endfunction

if get(g:, 'christmastree_glitter_update', 1)
    call s:christmas_glitter_start()
    autocmd BufWipeout <buffer> call <SID>christmas_glitter_stop()
endif

command! -nargs=0 -bar -buffer MerryChristmas call <SID>christmas_glitter_toggle()
