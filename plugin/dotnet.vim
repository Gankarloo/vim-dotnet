" Vim Plugin File
" Maintainer: Gustaf Ankarloo <gankarloo@gmail.com>
" Last Change: 2020-08-11
"
" set compiler to dotnet
augroup csharpcompiler
  autocmd!
  autocm FileType cs :compiler dotnet
augroup END
