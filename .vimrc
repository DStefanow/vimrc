filetype on

" Define tab size (1 tab = 4 spaces)
set tabstop=4

" Indentantion separator for python
autocmd BufNewFile,BufRead *.py setlocal ts=4 sts=4 sw=4 expandtab autoindent

" Indentation separator for yaml files
autocmd BufNewFile,BufRead *.yaml,*.yml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" Syntax for terraform files
autocmd BufNewFile,BufRead *.tf,*.tfvars setlocal ts=2 sts=2 sw=2 expandtab

" Indentation separator for Jenkinsfile
autocmd BufNewFile,BufRead *Jenkinsfile* setlocal ts=4 sts=4 sw=4 expandtab

" Enable syntax color output
syntax on

" Trailing whitespaces mark and cleanup
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
command Rubber :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>
