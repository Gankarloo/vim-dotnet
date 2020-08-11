" Vim Compiler File
" Compiler: dotnet
" Maintainer: Gustaf Ankarloo <gankarloo@gmail.com>
" Last Change: 2020-08-11

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let current_compiler = "dotnet"

" Get current workspace folder
let b:workspace = execute('call coc#rpc#request("runCommand", ["workspace.workspaceFolders"])')
" Find project file
let b:proj = globpath(trim(b:workspace), "**/*.csproj")
" define make program with options
let &l:makeprg='dotnet build /nologo /p:GenerateFullPaths=true /clp:NoSummary /verbosity:quiet ' . b:proj

" Define error format
CompilerSet errorformat=%f(%l\\,%c):\ %m 
