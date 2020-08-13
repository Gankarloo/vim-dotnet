" Vim Plugin File
" Maintainer: Gustaf Ankarloo <gankarloo@gmail.com>
" Last Change: 2020-08-11
"
" Dependency on coc.nvim and coc extension coc-omnisharp
if !&rtp =~ 'coc.nvim'
  finish
endif

" set compiler to dotnet
augroup csharpcompiler
  autocmd!
  autocm FileType cs :compiler dotnet
augroup END
