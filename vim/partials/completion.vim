" *************************************
"
"   Completions
"
" *************************************

set wildmode=list:longest
set wildmenu                      "Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~       "Stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set completeopt=longest,menuone
