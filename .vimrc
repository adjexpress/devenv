set nu
set hlsearch
syntax on
colorscheme desert
map <C-C> "+y
set smartindent

" Memorization line of file
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" For vimdic
nmap tt :!vimdic.sh<Space><cword><CR>
xmap tt y<ESC>:!vimdic.sh<Space><C-R>"<CR>
" Reading text
xmap ts y<ESC>:!say.sh<Space><<<Space>EOF<Space>"<C-R>""<Space>EOF<CR>

" For hot_IT
map y7 <Esc>V}<C-C>}
nmap 88 v$y<ESC>:!google-chrome<Space><C-R>"<CR>
map ni }}{jI

" For Highlighting non ascii charactor
"syntax match nonascii "[^\x00-\x7F]"
"highlight nonascii guibg=Red ctermbg=3 term=standout

" For Highlighting word you want
xmap tm y<ESC>:syntax match this "<C-R>""<CR><ESC>:highlight this guibg=red ctermbg=2 term=standout<CR>

" Apply local .vimrc of current directory
"map ,1 :source<Space>.vimrc<CR>

map ,2 :bn<CR><ESC>G

" For check count of hot product from 1 year
map 44 :!echo<Space><cword><Space>>><Space>temp<CR>,2

" Modifying vim mode for translation
map ,1 :source<Space>~/project/devenv/.vimrc_translating<CR>
" Adaptation 80 column
map no v}gq

nmap tj :!grep<Space>-nr<Space><cword><Space>linux/Documentation/development-process/*<CR>
