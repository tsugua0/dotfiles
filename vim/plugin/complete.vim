" coc.nvim
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" braces
inoremap [ []<ESC>i
inoremap ( ()<ESC>i
inoremap { {}<ESC>i
inoremap {; {};<ESC>i
inoremap {<CR> {<CR>}<ESC>O
inoremap {<S-CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap {;<S-CR> {<CR>};<ESC>O

inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"

inoremap <expr> <BS> strpart(getline('.'), col('.')-1, 1) == ")" ? "\<DEL>\<BS>" :
			\ strpart(getline('.'), col('.')-1, 1) == "]" ? "\<DEL>\<BS>" :
			\ strpart(getline('.'), col('.')-1, 1) == "}" ? "\<DEL>\<BS>" :
			\ strpart(getline('.'), col('.')-2, 2) == "\"\"" ? "\<DEL>\<BS>" :
			\ strpart(getline('.'), col('.')-2, 2) == "\'\'" ? "\<DEL>\<BS>" :
			\ "\<BS>"
