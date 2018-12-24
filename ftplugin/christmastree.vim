if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

let s:seed = float2nr(reltimefloat(reltime()))
function! s:rand() abort
  let s:seed = s:seed * 214013 + 2531011
  return (s:seed < 0 ? s:seed - 0x80000000 : s:seed) / 0x10000 % 0x8000
endfunction

let s:colors = [
    \   'christmastreeYellow',
    \   'christmastreeRed',
    \   'christmastreeOrange',
    \   'christmastreeGold',
    \   'christmastreeWhite',
    \   'christmastreePurple',
    \   'christmastreeSkyblue',
    \   'christmastreePink',
    \   'christmastreeLight',
    \   'Ignore',
    \ ]

function! s:christmas_glitter_tick(timer) abort
    if !exists('s:timer_id')
        call timer_stop(a:timer)
        return
    endif

    let small = s:colors[s:rand() % len(s:colors)]
    execute 'hi link christmastreeGlitterSmall' small

    let large = s:colors[s:rand() % len(s:colors)]
    execute 'hi link christmastreeGlitterLarge' large
endfunction

function! s:christmas_glitter_start() abort
    if exists('s:timer_id')
        return
    endif
    let s:timer_id = timer_start(1000, function('s:christmas_glitter_tick'), {'repeat': -1})
endfunction

function! s:christmas_glitter_stop() abort
    if !exists('s:timer_id')
        return
    endif
    call timer_stop(s:timer_id)
    unlet! s:timer_id
endfunction

if get(g:, 'christmastree_glitter_update', 1)
    call s:christmas_glitter_start()
    autocmd BufWipeout <buffer> call <SID>christmas_glitter_stop()
endif

command! -nargs=0 -bar -buffer ChristmasTreeTurnOn call <SID>christmas_glitter_start()
command! -nargs=0 -bar -buffer ChristmasTreeTurnOff call <SID>christmas_glitter_stop()
