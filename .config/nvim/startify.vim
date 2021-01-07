" startify bookmarks
let g:startify_bookmarks = [ 
  \  '~/.config/nvim/init.vim',
  \  '~/.config/i3/config',
  \  '~/.zshrc',
  \ '~/Projects/directory-over-ip',
  \ ]

" startify padding
let g:startify_padding_left = 20

" startify lists
let g:startify_lists = [                                                                         
          \ { 'type': 'files',     'header': ['                    Recents']        },                    
          \ { 'type': 'bookmarks', 'header': ['                    Dotfiles']       },                     
          \ ]                 

" startify header
let g:startify_custom_header = startify#center([
	\ ' .__   __.  _______   ______   ____    ____  __  .___  ___. ',
	\ ' |  \ |  | |   ____| /  __  \  \   \  /   / |  | |   \/   | ',
	\ ' |   \|  | |  |__   |  |  |  |  \   \/   /  |  | |  \  /  | ',
	\ ' |  . `  | |   __|  |  |  |  |   \      /   |  | |  |\/|  | ',
	\ ' |  |\   | |  |____ |  `--`  |    \    /    |  | |  |  |  | ',
	\ ' |__| \__| |_______| \______/      \__/     |__| |__|  |__| ',
	\ ])

