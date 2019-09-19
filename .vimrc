call pathogen#infect() 
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
filetype indent on
set wildmenu
set hlsearch

"--ctags setting--
" 按下F5重新生成tag文件，并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags
set tags+=~/ws/cyc_core/cyc_app/tags
