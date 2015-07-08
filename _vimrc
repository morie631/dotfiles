""Kaoriya固有の機能をオフにする{{{1
"if has('kaoriya')
"		let g:no_vimrc_example=0
"		let g:vimrc_local_finish=1
"		let g:gvimrc_local_finish=1
"		"$VIM/plugins/kaoriya/autodate.vim
"		let plugin_autodate_disable  = 1
"		"$VIM/plugins/kaoriya/cmdex.vim
"		let plugin_cmdex_disable     = 1
"		"$VIM/plugins/kaoriya/dicwin.vim
"		let plugin_dicwin_disable    = 1
"		"$VIMRUNTIME/plugin/format.vim
"		let plugin_format_disable    = 1
"		"$VIM/plugins/kaoriya/hz_ja.vim
"		let plugin_hz_ja_disable     = 1
"		"$VIM/plugins/kaoriya/scrnmode.vim
"		let plugin_scrnmode_disable  = 1
"		"$VIM/plugins/kaoriya/verifyenc.vim
"		let plugin_verifyenc_disable = 1
"endif "}}}

"--------------------------------------------------
"Start NeoBundle Settings.{{{1
"--------------------------------------------------
"NeoBundle前設定{{{2

"bundleで管理するディレクトリを指定C:\Users\TI\.vim\bundle
"set runtimepath+=~/.vim/bundle/neobundle.vim/

"vim起動時のみruntimepathにneobundle.vimを追加
if has('vim_starting')
				set nocompatible
				set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"" neobundle.vimの初期化 
"call neobundle#rc(expand('=/.vim/bundle/'))
call neobundle#begin(expand('C:\Users\TI/.vim/bundle/'))

"neobundle自体をneobundleで管理,更新
NeoBundleFetch 'Shougo/neobundle.vim'
"}}}

"""""" 読み込むプラグインを記載""""""{{{2
NeoBundle 'Shougo/vimproc'	"非同期処理
NeoBundle 'scrooloose/nerdtree'	"NERDTreeを設定
NeoBundle 'Shougo/unite.vim' "すごいやつ
NeoBundle 'thinca/vim-quickrun' "\r で動く
NeoBundle 'Shougo/neosnippet-snippets' "neosnippet
NeoBundle 'Shougo/neosnippet' "neosnippet
" if has('lua') "neocomplete{{{3
				" NeoBundleLazy 'Shougo/neocomplete.vim',{
																" \'depends':'Shougo/vimproc',
																" \'autoload':{'insert':1,}
																" \}
" endif	"}}}
" NeoBundle 'Townk/vim-autoclose'	"括弧を自動で閉じる
NeoBundle 'w0ng/vim-hybrid' "colorscheme
"NeoBundle 'itchyny/lightline.vim' "lightline
"NeoBundle 'tpope/vim-fugitive'	"gitを使いやすくする
"NeoBundle 'airblade/vim-gitgutter'	"gitの差分を表示
NeoBundle 'scrooloose/nerdcommenter' "\/でコメントアウト



call neobundle#end()
"}}}

"NeoBundle後設定 {{{2
" 読み込んだプラグインも含め、ファイルタイプの検出、ファイルタイプ別プラグイン/インデントを有効化する
filetype plugin indent on

" インストールのチェック
NeoBundleCheck
" }}}

"--------------------------------------------------
"End NeoBundle Settings. }}}
"--------------------------------------------------

" 基本設定 {{{1
"画面表示 {{{2
set number
set ruler
set showmatch
set showcmd
set title
syntax on
set tabstop=2
set smartindent
set autoindent
"}}}

"入力モード時、ステータスラインのカラーを変更{{{2
augroup InsertHook
				autocmd!
				autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
				autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
"}}}

"挿入モードで日本語IMEをデフォルトでオフ{{{2
set iminsert=0
set imsearch=-1
"}}}

"インデントによる折り畳み{{{2
set foldmethod=indent
"}}}

"クリップボードをWindowsと共有{{{2
set clipboard=unnamed
set backspace=start,eol,indent
set mouse=a

set incsearch
set wildmenu wildmode=list:full
"}}}

"カーソルを表示行で移動する。{{{2
" nnoremap <silent>j gj
" nnoremap <silent>k gk
" nnoremap <Down> gj
" nnoremap <Up> gk
"}}}


"全角スペースを視覚化{{{2
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /　/
"}}}

"javaのハイライト設定{{{2
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"}}}

"<Leader>の設定{{{2
let mapleader = "\\"
map \\ <Leader>
"}}}

"modelineを有効にする {{{2
set modeline
"3行目までをmodelineとして検索する
set modelines=3
"}}}
"}}}

"plugin設定{{{1
"NERDtreeの設定:NERDTreeのショートカットを<Ctrl+eに>{{{2
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"}}}

"neocomplete {{{2
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}

"colorsheme設定{{{2
colorscheme hybrid-light "colorscheme
"}}}

""lightlineプラグインの設定{{{2
"let g:lightline = {
"						\'colorscheme':'wombat'
"						\}
"}}}

"NerdCommenter{{{2
let g:NERDCreateDefaultMappings = 0
let NERDSpaceDelims = 1 "スペース1文字空ける
"コメントアウトはccでトグル 
nmap <Leader>/ <Plug>NERDCommenterToggle
vmap <Leader>/ <Plug>NERDCommenterToggle
nmap <Leader>/a <Plug>NERDCommenterAppend
nmap <Leader>/9 <Plug>NERDCommenterToEOL
nmap <Leader>/s <Plug>NERDCommenterSexy
"}}}

"" unite.vimの設定{{{2
""
" 入力モードで開始する{{{3
let g:unite_enable_start_insert=1
" バッファ一覧
" noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
"}}}

" ウィンドウを分割して開く{{{3
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"}}}

" ESCキーを2回押すと終了する{{{3
" au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
" au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
"}}}

" 初期設定関数を起動する{{{3
au FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
				" Overwrite settings.
endfunction
"}}}

" 様々なショートカット{{{3
" call unite#custom#substitute('file', '\$\w\+', '\=eval(submatch(0))', 200)
" call unite#custom#substitute('file', '^@@', '\=fnamemodify(expand("#"), ":p:h")."/"', 2)
" call unite#custom#substitute('file', '^@', '\=getcwd()."/*"', 1)
" call unite#custom#substitute('file', '^;r', '\=$VIMRUNTIME."/"')
" call unite#custom#substitute('file', '^\~', escape($HOME, '\'), -2)
" call unite#custom#substitute('file', '\\\@<! ', '\\ ', -20)
" call unite#custom#substitute('file', '\\ \@!', '/', -30)

" if has('win32') || has('win64')
" call unite#custom#substitute('file', '^;p', 'C:/Program Files/')
" call unite#custom#substitute('file', '^;v', '~/vimfiles/')
" else
" call unite#custom#substitute('file', '^;v', '~/.vim/')
" endif
"}}}
"}}}
"}}}

" vim: foldmethod=marker
" vim: foldcolumn=3
" vim: foldlevel=0
