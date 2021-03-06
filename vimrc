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

call setreg('o', '/{v]}do')
call setreg('a', 'ggVG')
call setreg('b', '$xo{}j')
"call setreg('h', '0i////////// A //////////')
call setreg('h', 'i#ifndef %gUaW:s/\./_/Wyeo#define "#endif  // "gg')
call setreg('c', 'ggOkki/// \file %/ \author Ben Radford/ \date :let @w=strftime("%eth %B %Y")Aw:s/1th/1st/e:s/2th/2nd/e:s/3th/3rd/eo// Copyright :let @w=strftime("%Y")Aw, Ben Radford. All rights reserved./4kO/ \brief ')
call setreg('g', '0O%jv/{:s/:\s*\w\+\s\+\S\+\s*{/{/e/{b"wye?%jv/{:s/\w\+\s\+\w\+\s\+{/{/?%xv/{�kb"eyj"wP:s/template\(<[^>]*>\)/\1/e:s/\w\+\s\+\(\w\+.\)\(\s*\)/\1/ge0v/{:s/\(\S\){/\1 {/ev/{�kb�kb"rdkv/{c{vi{10<:''<,''>g/^$/d?{vi{:g/^virtual .*=\s*0\s*;\s*$/de:''<,''>s/^virtual //e:''<,''>s/^static //e:''<,''>s/^\(\s*template<[^>]*>\)\s*\n\s*\(\(const\s\+\)\?\S\+\s\+\w\+(.*).*;\)\s*$/\1 \2/e?{vi{:s/^\(\~\?w(\)/%none% \1/e:''<,''>s/\/\/.*$//e:''<,''>v/\(template<[^>]*> \)\?\(const\s\+\)\?\S\+\s\+\~\?\w\+([^)]*).*;\s*$/d?{vi{:s/^\(template<[^>]*> \)\?\(const\s\+\)\?\(\S\+\)\s\+\(\S\+([^)]*).*\);\s*$/e\1\2\3 r::\4{}//};vi{:s/^\(template<[^>]*> \)\(\(const\s\+\)\?\S\+\s\+\S\+(.*\)$/\1\2/e:''<,''>s/%none% //e/};%xi////////// "wpA ///////////};xx?/0')
