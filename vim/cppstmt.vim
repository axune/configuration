" Help delete a character if it is 'empty space'
" stolen from Vim manual
function! Eatchar()
    let c = nr2char(getchar())
    return (c =~ '\s') ? '' : c
endfunction

" Replace abbreviation if we're not in comment or other unwanted places
" stolen from Luc Hermitte's excellent http://hermitte.free.fr/vim/
function! MapNoContext(key, seq)
    let syn = synIDattr(synID(line('.'),col('.')-1,1),'name')
    if syn =~? 'comment\|string\|character\|doxygen'
        return a:key
    else
        exe 'return "' .
        \ substitute( a:seq, '\\<\(.\{-}\)\\>', '"."\\<\1>"."', 'g' ) . '"'
    endif
endfunction

" Create abbreviation suitable for MapNoContext
function! Iab (ab, full)
    exe "iab <silent> <buffer> ".a:ab." <C-R>=MapNoContext('".
        \ a:ab."', '".escape (a:full.'<C-R>=Eatchar()<CR>', '<>\"').
        \"')<CR>"
endfunction

call Iab('#d', '#define ')
call Iab('#i', '#include <><Left>')
call Iab('#I', '#include ""<Left>')
call Iab('printf', 'printf("\n");<C-O>?\<CR>')
call Iab('if', 'if () {<CR>}<Left><C-O>?)<CR>')
call Iab('for', 'for () {<CR>}<C-O>?)<CR>')
call Iab('foreach', 'foreach () {<CR>}<C-O>?)<CR>')
call Iab('while', 'while () {<CR>}<C-O>?)<CR>')
call Iab('do', 'do {<CR>} while ();<C-O>?)<CR>')
call Iab('else', 'else {<CR>x;<CR>}<C-O>?x;<CR><Del><Del>')
call Iab('ifelse', 'if () {<CR>} else {<CR>}<C-O>?)<CR>')
call Iab('switch', 'switch () {<CR>}<C-O>?)<CR>')
"call Iab('class', 'class  {<CR>};<C-O>?{<CR><Left>')
"call Iab('struct', 'struct  {<CR>};<C-O>?{<CR><Left>')
call Iab('intmain', 'int main (int argc, char* argv[])<CR>'.
 \ '{<CR>x;<CR>return 0;<CR>}<CR><C-O>?x;<CR><Del><Del>')

