" autoindent with two spaces, always expand tabs
autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
autocmd FileType ruby,eruby,yaml setlocal path+=lib
autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
" Make ?s part of words
autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

let b:ale_linters = ['rubocop']
" only lint on save
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" change rspec to script/test
let g:rspec_command = "!script/test -q {spec}"
