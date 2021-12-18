let g:startify_session_dir = '~/.vim/sessions'
let g:startify_session_delete_buffers = 1

let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1

let g:startify_enable_special = 0


let g:startify_bookmarks = [
            \ { 'b': '~/.bin/' },
            \ { 'v': '~/.vimrc' },
            \ { 'c': '~/.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/dev/antfood/labs',
            \ '~/dev/antfood/learn-to-bp',
            \ '~/dev/antfood',
            \ '~/dev/bp',
            \ '~/dev',
            \ ]

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \]


