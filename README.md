CrBoy's vimrc
=============
`Author: CrBoy (http://github.com/CrBoy)`

Introduction
------------
This project is a set of [vim] configurations (vimrc, or vimfiles), which is convenient to the author. If [git] is installed on the machine, these settings could be installed by only one line of command on Linux or MacOSX.

[vim]: http://www.vim.org/
[git]: http://git-scm.com/

One-Step Install
----------------
**Prerequisite: Make sure GIT is installed**

Using curl (Mac (OSX) should have curl):

	curl -o- https://raw.githubusercontent.com/CrBoy/vimrc/master/one-step-install.sh | sh

or wget (Linux often has wget):

	wget -O- https://raw.githubusercontent.com/CrBoy/vimrc/master/one-step-install.sh | sh

Features
--------
- Convenient for Traditional Chinese users (set fileencodings)
- Tabline with a number for each tab, making tab switching more easily
- Using [NeoBundle] to manage the plug-ins in a better way

Plug-ins
--------
- [NeoBundle]
- [CtrlP]
- [vim-airline]
- [NERDTree]
- [surround]
- [vim-multiple-Cursors]

[NeoBundle]: https://github.com/Shougo/neobundle.vim
[CtrlP]: https://github.com/ctrlpvim/ctrlp.vim
[vim-airline]: https://github.com/bling/vim-airline
[NERDTree]: https://github.com/scrooloose/nerdtree
[surround]: https://github.com/tpope/vim-surround
[vim-multiple-cursors]: https://github.com/terryma/vim-multiple-cursors

Acknowledgements
----------------
- The project refers to [vgod] and [vgod's vimrc]. I'm really thanks to him showing amazing tips. :D
- [c9s] brings me spirits of vim and git.
- I learned the usage of git-submodule from [here][git-submodule]. (Older version uses git-submodule to manage plugins)

[vgod]: https://github.com/vgod
[vgod's vimrc]: https://github.com/vgod/vimrc
[c9s]: https://github.com/c9s
[git-submodule]: http://josephjiang.com/entry.php?id=342
