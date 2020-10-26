if exists('g:loaded_mr_quickfix')
  finish
endif
let g:loaded_mr_quickfix = 1

command! -bar -nargs=* Mru call mr_quickfix#mru(<q-args>)
command! -bar -nargs=* Mrw call mr_quickfix#mrw(<q-args>)
