
" Current Platform
function! MySys()
  return "linux"
endfunction  

" Fast visual search. #Depend on function.vim
" Function for Visual Search 
function! VisualSearch(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"
  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")
  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  else
    execute "normal /" . l:pattern . "^M"
  endif
  let @/ = l:pattern
  let @" = l:saved_reg
endfunction
vnoremap <silent> * :call VisualSearch('f')<cr>
vnoremap <silent> # :call VisualSearch('b')<cr>

" preview markdown 
function! MarkdownPreview()
  silent update
  let output_name = tempname() . '.html'

  let file_header = ['<html>', '<head>',
        \ '<meta http-equiv="Content-Type" content="text/html; charset=utf-8">',
        \ '<title>'.expand('%:p').'</title>',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssreset/reset-min.css">',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssbase/base-min.css">',
        \ '<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.3.0/build/cssfonts/fonts-min.css">',
        \ '<style>body{padding:20px;}div#container{background-color:#F2F2F2;padding:0 20px;margin:0px;border:solid #D0D0D0 1px;}</style>',
        \ '</head>', '<body>', '<div id="container">']

  call writefile(file_header, output_name)

  silent exec '!markdown "' . expand('%:p') . '" >> "' . output_name . '"'

  silent exec '!echo "</div></body></html>" >> "' . output_name . '"'

  silent exec '!sensible-browser "' . output_name . '" &'
endfunction
