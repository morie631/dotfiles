""Kaoriya�ŗL�̋@�\���I�t�ɂ���{{{1
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
"NeoBundle�O�ݒ�{{{2

"bundle�ŊǗ�����f�B���N�g�����w��C:\Users\TI\.vim\bundle
"set runtimepath+=~/.vim/bundle/neobundle.vim/

"vim�N�����̂�runtimepath��neobundle.vim��ǉ�
if has('vim_starting')
				set nocompatible
				set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"" neobundle.vim�̏����� 
"call neobundle#rc(expand('=/.vim/bundle/'))
call neobundle#begin(expand('C:\Users\TI/.vim/bundle/'))

"neobundle���̂�neobundle�ŊǗ�,�X�V
NeoBundleFetch 'Shougo/neobundle.vim'
"}}}

"""""" �ǂݍ��ރv���O�C�����L��""""""{{{2
NeoBundle 'Shougo/vimproc'	"�񓯊�����
NeoBundle 'scrooloose/nerdtree'	"NERDTree��ݒ�
NeoBundle 'Shougo/unite.vim' "���������
NeoBundle 'thinca/vim-quickrun' "\r �œ���
NeoBundle 'Shougo/neosnippet-snippets' "neosnippet
NeoBundle 'Shougo/neosnippet' "neosnippet
" if has('lua') "neocomplete{{{3
				" NeoBundleLazy 'Shougo/neocomplete.vim',{
																" \'depends':'Shougo/vimproc',
																" \'autoload':{'insert':1,}
																" \}
" endif	"}}}
" NeoBundle 'Townk/vim-autoclose'	"���ʂ������ŕ���
NeoBundle 'w0ng/vim-hybrid' "colorscheme
"NeoBundle 'itchyny/lightline.vim' "lightline
"NeoBundle 'tpope/vim-fugitive'	"git���g���₷������
"NeoBundle 'airblade/vim-gitgutter'	"git�̍�����\��
NeoBundle 'scrooloose/nerdcommenter' "\/�ŃR�����g�A�E�g



call neobundle#end()
"}}}

"NeoBundle��ݒ� {{{2
" �ǂݍ��񂾃v���O�C�����܂߁A�t�@�C���^�C�v�̌��o�A�t�@�C���^�C�v�ʃv���O�C��/�C���f���g��L��������
filetype plugin indent on

" �C���X�g�[���̃`�F�b�N
NeoBundleCheck
" }}}

"--------------------------------------------------
"End NeoBundle Settings. }}}
"--------------------------------------------------

" ��{�ݒ� {{{1
"��ʕ\�� {{{2
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

"���̓��[�h���A�X�e�[�^�X���C���̃J���[��ύX{{{2
augroup InsertHook
				autocmd!
				autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
				autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
"}}}

"�}�����[�h�œ��{��IME���f�t�H���g�ŃI�t{{{2
set iminsert=0
set imsearch=-1
"}}}

"�C���f���g�ɂ��܂���{{{2
set foldmethod=indent
"}}}

"�N���b�v�{�[�h��Windows�Ƌ��L{{{2
set clipboard=unnamed
set backspace=start,eol,indent
set mouse=a

set incsearch
set wildmenu wildmode=list:full
"}}}

"�J�[�\����\���s�ňړ�����B{{{2
" nnoremap <silent>j gj
" nnoremap <silent>k gk
" nnoremap <Down> gj
" nnoremap <Up> gk
"}}}


"�S�p�X�y�[�X�����o��{{{2
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
au BufNewFile,BufRead * match ZenkakuSpace /�@/
"}}}

"java�̃n�C���C�g�ݒ�{{{2
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
"}}}

"<Leader>�̐ݒ�{{{2
let mapleader = "\\"
map \\ <Leader>
"}}}

"modeline��L���ɂ��� {{{2
set modeline
"3�s�ڂ܂ł�modeline�Ƃ��Č�������
set modelines=3
"}}}
"}}}

"plugin�ݒ�{{{1
"NERDtree�̐ݒ�:NERDTree�̃V���[�g�J�b�g��<Ctrl+e��>{{{2
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

"colorsheme�ݒ�{{{2
colorscheme hybrid-light "colorscheme
"}}}

""lightline�v���O�C���̐ݒ�{{{2
"let g:lightline = {
"						\'colorscheme':'wombat'
"						\}
"}}}

"NerdCommenter{{{2
let g:NERDCreateDefaultMappings = 0
let NERDSpaceDelims = 1 "�X�y�[�X1�����󂯂�
"�R�����g�A�E�g��cc�Ńg�O�� 
nmap <Leader>/ <Plug>NERDCommenterToggle
vmap <Leader>/ <Plug>NERDCommenterToggle
nmap <Leader>/a <Plug>NERDCommenterAppend
nmap <Leader>/9 <Plug>NERDCommenterToEOL
nmap <Leader>/s <Plug>NERDCommenterSexy
"}}}

"" unite.vim�̐ݒ�{{{2
""
" ���̓��[�h�ŊJ�n����{{{3
let g:unite_enable_start_insert=1
" �o�b�t�@�ꗗ
" noremap <C-P> :Unite buffer<CR>
" �t�@�C���ꗗ
noremap <C-N> :Unite -buffer-name=file file<CR>
" �ŋߎg�����t�@�C���̈ꗗ
noremap <C-Z> :Unite file_mru<CR>
"}}}

" �E�B���h�E�𕪊����ĊJ��{{{3
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" �E�B���h�E���c�ɕ������ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"}}}

" ESC�L�[��2�񉟂��ƏI������{{{3
" au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
" au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
"}}}

" �����ݒ�֐����N������{{{3
au FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
				" Overwrite settings.
endfunction
"}}}

" �l�X�ȃV���[�g�J�b�g{{{3
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
