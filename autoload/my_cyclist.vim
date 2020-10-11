
" echo 'my_cyclist does not sourced automagically'
" echo 'But it does after getting load'
let s:DEBUG = v:false
let s:listchars_opts = {
            \ 'eol': '',
            \ 'tab': '>',
            \ 'space': '_',
            \ 'trail': '-',
            \ 'extends': '',
            \ 'precedes': '',
            \ 'conceal': '',
            \ 'nbsp': '+',
            \}

function my_cyclist#update_listchars() abort

    let listchars_mapped = join(map(
                \items(filter(s:listchars_opts, {k, v -> v != ''})),
                \{index, key -> printf("%s:%s", key[0], key[1])}
                \), ',')

    if s:DEBUG 
        echo 'listchars_mapped:'
        echo listchars_mapped
    endif


     let &listchars = listchars_mapped
endfunction

function my_cyclist#set_eol(chars) abort
    let s:listchars_opts.eol = a:chars
    call my_cyclist#update_listchars()
endfunction

function my_cyclist#set_tab(chars) abort
    let s:listchars_opts.tab = a:chars
    call my_cyclist#update_listchars()
endfunction


function my_cyclist#set_space(chars) abort
    let s:listchars_opts.space = a:chars
    call my_cyclist#update_listchars()
endfunction

function my_cyclist#set_trail(chars) abort
    let s:listchars_opts.trail = a:chars
    call my_cyclist#update_listchars()
endfunction


function my_cyclist#set_extends(chars) abort
    let s:listchars_opts.extends = a:chars
    call my_cyclist#update_listchars()
endfunction

function my_cyclist#set_precedes(chars) abort
    let s:listchars_opts.precedes = a:chars
    call my_cyclist#update_listchars()
endfunction

function my_cyclist#set_conceal(chars) abort
    let s:listchars_opts.conceal = a:chars
    call my_cyclist#update_listchars()
endfunction

function my_cyclist#set_nbsp(chars) abort
    let s:listchars_opts.nbsp = a:chars
    call my_cyclist#update_listchars()
endfunction

call my_cyclist#update_listchars()
