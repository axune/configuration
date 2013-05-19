set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set cursorline
filetype on
filetype indent on
syntax on
colorscheme redblack
au FileType cpp so ~/.vim/cppstmt.vim
"highlight CursorLine ctermbg=blue ctermfg=white

imap jj <Esc>
set timeoutlen=250

map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

call setreg('o', '/{
call setreg('a', 'ggVG')
call setreg('b', '$xo{
"call setreg('h', '0i////////// A //////////')
call setreg('h', 'i#ifndef %gUaW:s/\./_/
call setreg('c', 'ggO
call setreg('g', '0O%jv/{