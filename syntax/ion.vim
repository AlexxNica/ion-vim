if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn region doubleQuote start='"' end='"' contains=variable,process
syn region singleQuote start='\'' end='\''
syn region arrayVar start="@{" end="}"
syn match arrayVar "@[a-zA-Z0-9_]\+"
syn region variable start="${" end="}"
syn match variable "$[a-zA-Z0-9_]\+"
syn region process start="$(" end=")" transparent
syn region process start="@(" end=")" transparent
syn match ionNumber '[+-]\?\([0-9]*[.]\)\?[0-9]\+'
syn match comment '[#].*$'

syntax keyword ionKeyword &
syntax keyword ionKeyword &&
syntax keyword ionKeyword .
syntax keyword ionKeyword ..
syntax keyword ionKeyword alias
syntax keyword ionKeyword and
syntax keyword ionKeyword bg
syntax keyword ionKeyword break
syntax keyword ionKeyword calc
syntax keyword ionKeyword case
syntax keyword ionKeyword cd
syntax keyword ionKeyword complete
syntax keyword ionKeyword contains
syntax keyword ionKeyword continue
syntax keyword ionKeyword count
syntax keyword ionKeyword dirs
syntax keyword ionKeyword disown
syntax keyword ionKeyword drop
syntax keyword ionKeyword echo
syntax keyword ionKeyword else
syntax keyword ionKeyword end
syntax keyword ionKeyword ends-with
syntax keyword ionKeyword eval
syntax keyword ionKeyword exec
syntax keyword ionKeyword exit
syntax keyword ionKeyword false
syntax keyword ionKeyword fg
syntax keyword ionKeyword fn
syntax keyword ionKeyword for
syntax keyword ionKeyword help
syntax keyword ionKeyword history
syntax keyword ionKeyword if
syntax keyword ionKeyword in
syntax keyword ionKeyword jobs
syntax keyword ionKeyword let
syntax keyword ionKeyword match
syntax keyword ionKeyword matches
syntax keyword ionKeyword mkdir
syntax keyword ionKeyword not
syntax keyword ionKeyword or
syntax keyword ionKeyword popd
syntax keyword ionKeyword pushd
syntax keyword ionKeyword pwd
syntax keyword ionKeyword read
syntax keyword ionKeyword set
syntax keyword ionKeyword source
syntax keyword ionKeyword starts-with
syntax keyword ionKeyword status
syntax keyword ionKeyword suspend
syntax keyword ionKeyword test
syntax keyword ionKeyword time
syntax keyword ionKeyword true
syntax keyword ionKeyword unalias
syntax keyword ionKeyword wait
syntax keyword ionKeyword while

hi def link ionKeyword Statement
hi def link arrayVar Identifier
hi def link variable Identifier
hi def link ionNumber Constant
hi def link doubleQuote Type
hi def link singleQuote Type
hi def link process PreProc
hi def link comment Comment
