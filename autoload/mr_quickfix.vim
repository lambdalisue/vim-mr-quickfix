function! mr_quickfix#mru(path) abort
  call s:setqflist(a:path, 'mru', mr#mru#list())
endfunction

function! mr_quickfix#mrw(path) abort
  call s:setqflist(a:path, 'mrw', mr#mrw#list())
endfunction

function! s:setqflist(path, name, items) abort
  let path = empty(a:path) ? '' : fnamemodify(expand(a:path), ':p')
  call setqflist([], ' ', {
        \  'title': printf('mr:%s:%s', a:name, path),
        \  'efm': '%f',
        \  'lines': empty(path)
        \     ? a:items
        \     : mr#filter(a:items, path),
        \})
endfunction
