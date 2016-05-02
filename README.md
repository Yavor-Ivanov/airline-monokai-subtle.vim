# airline-monokai-subtle

A [vim-airline](https://github.com/vim-airline/vim-airline) theme for the [monokai](https://github.com/sickill/vim-monokai) colour scheme, that gets out of your way.

![img](https://raw.githubusercontent.com/Yavor-Ivanov/airline-monokai-subtle.vim/master/screenshots/airline_monokai_subtle_normal_mode.png)

# Rationale

I love vim-airline for its extensibility, style, and useful information it provides. Yet, all of the default themes that come with it are flashy and distracting in real use. I wanted something that will show me useful status information, but doesn't get in my way while reading code.

# Installation

This plugin follows the standard runtime path structure, and as such it can be installed with a variety of plugin managers:

*  Pathogen
  *  `git clone https://github.com/Yavor-Ivanov/airline-monokai-subtle.vim ~/.vim/bundle/airline-monokai-subtle`
*  NeoBundle
  *  `NeoBundle 'Yavor-Ivanov/airline-monokai-subtle.vim'`
*  Vundle
  *  `Plugin 'Yavor-Ivanov/airline-monokai-subtle.vim'`
*  Plug
  *  `Plug 'Yavor-Ivanov/airline-monokai-subtle.vim'`
*  manual
  *  copy all of the files into your `~/.vim` directory

# Configuration
After installing the theme, add this to your `.vimrc`:

```vim
let g:airline_theme = 'monokai_subtle'
```

# FAQ

**Q: My status bar looks different than yours. How do I get the cleaned-up look that you have?**

A: I've added this airline configuration to my `.vimrc`:

```vim
let g:airline_section_x = ''        " Get rid of the file encoding
let g:airline_section_y = ''        " Get rid of the file type
" Truncate the status mode to one capital letter
let g:airline_mode_map = {
\ '__' : '-',
\ 'n'  : 'N',
\ 'i'  : 'I',
\ 'R'  : 'R',
\ 'c'  : 'C',
\ 'v'  : 'V',
\ 'V'  : 'V',
\ '^V' : 'V',
\ 's'  : 'S',
\ 'S'  : 'S',
\ '^S' : 'S',
\ }
```

**Q: Can I use this theme if I use a different colour scheme?"**

A: Probably. Most of the colours in the theme are obtained from vim's higlight groups, which means it will use whatever colours your colour scheme uses. On the other hand, I've only tested this on monokai. You may find that you get inappropriate colour combinations with a different scheme.
