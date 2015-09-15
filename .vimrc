syntax on
set mouse=a
set modeline
set ruler
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

colorscheme zellner


" Highlight end of line space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

" F5 removes them
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

