" *************************************
"
"   Mappings
"
" *************************************

" -------------------------------------
"   General
" -------------------------------------

" ----- Better Defaults ----- "

nnoremap ; :
nnoremap : ;
inoremap jk <esc>

" ----- Arrow Keys for Window Sizing ----- "

noremap <up>    <c-w>+
noremap <down>  <c-w>-
noremap <left>  1<c-w>>
noremap <right> 1<c-w><

" ----- Window Navigation ----- "

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <c-h> :TmuxNavigatePrevious<cr>

" ----- Move Visual Block ----- "

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-1<ct>gv=gv

" ----- Tabs ----- "

noremap <c-t> <esc>:tabnew<cr>

" Previous tab
nnoremap H gT

" Next tab
nnoremap L gt

" ----- Save File ----- "

noremap <c-s> <esc>:w<cr>
inoremap <c-s> <esc>:w<cr>

" Save and quit file
nnoremap <bs> :wq<cr>

" ----- Miscellaneous ----- "

" Directory of Current File
cnoremap %% <c-r>=expand('%:h').'/'<cr>

" Jump out of parenthesis, brackets, etc.
inoremap <c-e> <c-o>A

" Insert newlines
nnoremap J O<esc>Dj
nnoremap K o<esc>Dk

" Copy to end of line
nnoremap Y y$

" -------------------------------------
"   Leader
" -------------------------------------

" ----- Non-alphanumeric ----- "

" Switch between buffers
nnoremap ,, <c-^>

" Shell command
nnoremap ! :!<space>

" Zoom pane
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" ----- A ----- "

" Search with ag
nnoremap <leader>aa :Ag! ''<left>

" Search for word under cursor with ag
nnoremap <leader>AA :Ag! <c-r><c-w><cr>

" ----- B ----- "

" bundle install
nnoremap <leader>B :!bundle install<cr>

" Open CtrlP buffer search
nnoremap <leader>b :CtrlPBuffer<cr>

" ----- C ----- "

" Run coffeelint on current file
nnoremap <silent> <leader>cl :CoffeeLint -f ~/.dotfiles/coffeelint/coffeelint.json \| cwindow<cr>

" Copy whole file, store in register
nnoremap <leader>co ggVG"*y

" ----- D ----- "

" Delete all text in file
nnoremap <leader>do ggdG

" Dispatcher commands
nnoremap <leader>dd :Dispatch<space>
nnoremap <leader>db :Make!<space>
nnoremap <leader>dc :Copen<cr>
nnoremap <leader>df :Make<space>

" ----- E ----- "

nnoremap <leader>Ef :Fixmyjs<cr>
nnoremap <leader>Es :! eslint %<cr>

" ----- F ----- "

" Standard CtrlP window
nnoremap <leader>f :CtrlP<cr>

" Clear CtrlP cache
nnoremap <silent> <leader>F :ClearCtrlPCache<cr>

" ----- G ----- "

" g Command
nnoremap <leader>G :g/

" :Gbrowse
nnoremap <leader>gb :Gbrowse<cr>

" :Gdiff
nnoremap <leader>gd :Gdiff<cr>

" Toggle light/dark backgrounds
nnoremap <leader>gl :let &background = (&background == "dark" ? "light" : "dark")<cr>

" Sort block
nnoremap <silent> <leader>gs (jV)k :sort<cr>

" ----- H ----- "

" Horizontal split
nnoremap <leader>h <c-w>s<c-w>j

" ----- I ----- "

" Auto-indent entire file
nnoremap <leader>I mmgg=G`m

" ----- J ----- "

" EasyMotion
map <leader>j <plug>(easymotion-bd-w)

" Jasmine
nnoremap <leader>J :!bundle exec rake jasmine:ci<cr>

" ----- K ----- "

map <leader>ka f(cs)(
map <leader>kr f(cs()

" ----- L ----- "

" Clear the search buffer when hitting return
nnoremap <silent> <leader>l :nohlsearch<cr>

" ----- M ----- "

" Open current file in Marked 2 application
nnoremap <leader>m :!open -a Marked\ 2.app "%"<cr>

" ----- N ----- "

" ...

" ----- O ----- "

" Open current file in Atom
nnoremap <leader>oa :! atom '%:p'<cr>
" Open current file in Sublime Text
nnoremap <leader>os :! subl '%:p'<cr>

" ----- P ----- "

" Duplicate current line, paste after
nnoremap <leader>p Yp

" Nice paste
nnoremap <leader>P :set paste<cr>o<esc>"*]p :set nopaste<cr>

" ----- Q ----- "

" Quit
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :x<cr>

" ----- R ----- "

" Open .vimrc
nnoremap <leader>rc :e ~/.dotfiles/vim/vimrc<cr>

" Replace current search with...
nnoremap <leader>rs :%s//

" Open Vim mappings file
nnoremap <leader>rm :e ~/.dotfiles/vim/partials/mappings.vim<cr>

" ----- S ----- "

" Trim trailing whitespace
nnoremap <silent> <leader>st :%s/\s\+$//<cr>:let @/=''<cr>

" Open snippets
nnoremap <leader>sd :e ~/.dotfiles/vim/UltiSnips<cr>

" Shell command
nnoremap <leader>sh :!<space>

" Edit currently scoped snippets
nnoremap <leader>se :UltiSnipsEdit<cr>

" ----- T ----- "

" Tabularize
vnoremap <leader>T :Tabularize /
vnoremap <leader>T= :Tabularize /=<cr>
vnoremap <leader>T: :Tabularize /:<cr>

" Run RSpec test for current file
nnoremap <leader>t :!bundle exec rspec %<cr>

" ----- U ----- "

" IndentGuidesToggle
nnoremap <silent> <leader>ug :IndentGuidesToggle<cr>

" ----- V ----- "

" Vertical split
nnoremap <leader>v <c-w>v<c-w>l

" Goyo trigger
nnoremap <leader>V :Goyo<cr>

" ----- W ----- "

" Save file
nnoremap <leader>w :w<cr>
nnoremap <leader>W :x<cr>

" ----- X ----- "

" ...

" ----- Y ----- "

" Copy line, paste before current line
nnoremap <leader>y YP

" ----- Z ----- "

" Quicker action to suspend Vim ('fg' to return)
nnoremap <leader>z <c-z>

" Replace bottom, middle, top
nnoremap zh H
nnoremap zm M
nnoremap zl L
