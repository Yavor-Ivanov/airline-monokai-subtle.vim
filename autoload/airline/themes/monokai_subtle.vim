let g:airline#themes#monokai_subtle#palette = {}

function! airline#themes#monokai_subtle#refresh()
  let s:N1 = airline#themes#get_highlight2(['LineNr', 'fg'], ['TabSel', 'bg'], 'bold')
  let s:N2 = airline#themes#get_highlight('Folded')
  let s:N3 = airline#themes#get_highlight('NonText')

  let g:airline#themes#monokai_subtle#palette.accents = {
        \ 'red': airline#themes#get_highlight('Constant'),
        \ }

  let g:airline#themes#monokai_subtle#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#monokai_subtle#palette.normal_modified = {
        \ 'airline_c': [ '#ffb964', '', 215, '', '' ]
        \ }

  let s:I1 = airline#themes#get_highlight('DiffAdd', 'bold')
  let s:I2 = s:N2
  let s:I3 = s:N3
  let g:airline#themes#monokai_subtle#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#monokai_subtle#palette.insert_modified = g:airline#themes#monokai_subtle#palette.normal_modified

  let s:R1 = airline#themes#get_highlight('WildMenu', 'bold')
  let s:R2 = s:N2
  let s:R3 = s:N3
  let g:airline#themes#monokai_subtle#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#monokai_subtle#palette.replace_modified = g:airline#themes#monokai_subtle#palette.normal_modified

  let s:V1 = airline#themes#get_highlight('Constant', 'bold')
  let s:V2 = s:N2
  let s:V3 = s:N3
  let g:airline#themes#monokai_subtle#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#monokai_subtle#palette.visual_modified = g:airline#themes#monokai_subtle#palette.normal_modified

  let s:IA1 = [ '#444444', '#1c1c1c', 237, 234 ]
  let s:IA2 = s:IA1
  let s:IA3 = s:IA1
  let g:airline#themes#monokai_subtle#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#monokai_subtle#palette.inactive_modified = g:airline#themes#monokai_subtle#palette.normal_modified
endfunction

call airline#themes#monokai_subtle#refresh()
