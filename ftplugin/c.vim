nmap <F7> :! make<CR>
nmap <F5> :call RunExecutable()<CR>

function! RunExecutable()
    let target_name = GetMakeTarget()
    let shell_cmd = "./" . target_name
    execute ':! ' . shell_cmd
endfunction

function! GetMakeTarget()
    let target_name  = system("head -1 Makefile | gawk '{print $3}'")
    return target_name
endfunction

