" LaTeX filetype
"	  Language: LaTeX (ft=tex)
"	Maintainer: Srinath Avadhanula
"		 Email: srinath@fastmail.fm

if !exists('s:initLatexSuite')
	let s:initLatexSuite = 1
	exec 'so '.expand('<sfile>:p:h').'/latex-suite/main.vim'

	silent! do LatexSuite User LatexSuiteInitPost
endif

silent! do LatexSuite User LatexSuiteFileType

" Devon's personal preferences
" Use two space indentations
set sw=2
" Allow me to cycle through figures with '\ref{fig:' then <C-n>
set iskeyword+=:
