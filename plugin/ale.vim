nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <A-F> <Plug>(ale_fix)
 
let g:ale_linters_explicit = 1
let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_lint_on_save = 1
let g:ale_lint_delay = 0

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

