" fzf UI config
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" maps
nnoremap <silent><Space>ff :Files<Enter> 
nnoremap <silent><Space>gf :GFiles<Enter> 
nnoremap <silent><Space>bb :Buffers<Enter>
nnoremap <silent><Space>sp :Ag<Enter>


