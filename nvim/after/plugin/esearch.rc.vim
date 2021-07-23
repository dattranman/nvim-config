" Esearch config
 nmap <c-f><c-f> <Plug>(esearch)
 map  <c-f>      <Plug>(operator-esearch-prefill)
 
 let g:esearch = {}
  autocmd User esearch_win_config
    \  let b:autopreview = esearch#async#debounce(b:esearch.preview_open, 100)
    \| autocmd CursorMoved <buffer> call b:autopreview.apply({'align': 'right'})
