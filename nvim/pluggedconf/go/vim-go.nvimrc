" Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_metalinter_enabled = [ "gas", "goconst", "gocyclo", "golint", "ineffassign", "interfacer", "maligned", "megacheck", "misspell", "structcheck", "unconvert", "varcheck", "vet"]
let g:go_def_mode = 'godef'

let g:go_addtags_transform = "snakecase"
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1

if !exists("g:go_gotags_bin")
  let g:go_gotags_bin = "gotags"
endif

" highlight matching identifiers
let g:go_auto_sameids = 1

" vim-go mappings
autocmd FileType go nmap <buffer><leader>d :GoDeclsDir<cr>

autocmd FileType go nmap <buffer><leader>gr <plug>(go-run)
autocmd FileType go nmap <buffer><leader>gt <plug>(go-test)
autocmd FileType go nmap <buffer><leader>gi <plug>(go-install)
autocmd FileType go nmap <buffer><leader>gc <plug>(go-coverage-toggle)
autocmd FileType go nmap <buffer><leader>gb <plug>(go-build)
autocmd FileType go nmap <buffer><leader>gtf <plug>(go-test-func)
autocmd FileType go nmap <buffer><leader>grn <plug>(go-rename)
" autocmd FileType go nmap <buffer><leader>gat <plug>(go-add-tags)

autocmd Filetype go nmap <buffer><leader>tu <Plug>(go-alternate-edit)
autocmd Filetype go nmap <buffer><leader>tub <Plug>(go-alternate-split)
autocmd Filetype go nmap <buffer><leader>tuv <Plug>(go-alternate-vertical)

autocmd FileType go nmap <buffer><leader>gd :exec "GoDoc ".expand("<c-r><c-f>")<cr>
autocmd FileType go nmap <buffer><leader>u :exec "GoImport ".expand("<cword>")<cr>
