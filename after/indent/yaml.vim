function! GetYAMLIndent(lnum)
  if a:lnum == 1 || !prevnonblank(a:lnum-1)
    return 0
  endif

  let prev_nonblank_lnum = prevnonblank(a:lnum-1)
  let prev_nonblank_line = getline(prev_nonblank_lnum)
  let prev_indent = indent(prev_nonblank_lnum)

  if prev_nonblank_line =~# ':$'
    return prev_indent + shiftwidth()
  else
    return -1
  endif
endfunction

setlocal indentexpr=GetYAMLIndent(v:lnum)
setlocal autoindent " So that returning -1 will keep indent
