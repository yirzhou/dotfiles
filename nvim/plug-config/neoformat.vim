let g:shfmt_opt="-ci"

augroup fmt
  autocmd!
  autocmd BufWritePre,TextChanged,InsertLeave * undojoin | Neoformat
augroup END
