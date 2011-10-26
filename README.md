CrBoy's vimrc
=============

One-Step Install
----------------
**Prerequisite: Make sure GIT is installed**

Using curl (MacOSX should have curl):

	curl -o - https://raw.github.com/CrBoy/vimrc/master/one-step-install.sh|sh

or wget (Linux often has wget):

	wget -o - https://raw.github.com/CrBoy/vimrc/master/one-step-install.sh|sh

Features
--------
- Convenient for Traditional Chinese users (set fileencodings)
- Convenient for developers especially C and C++ programmers
- Tabline with a number for each tab, making tab switching more easily
- Code/word completions are significant consideration here
- Using [pathogen] to manage the plug-ins in a better way
- Each plug-ins is treated as a submodule in `bundle/` (use `git submodule update` to update plug-ins)

Plug-ins
--------
- [pathogen]
- [NERDTree]
- [snipMate]
- [neocomplcache]
- [Tagbar]

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
[NERDTree]: http://www.vim.org/scripts/script.php?script_id=1658
[snipMate]: http://www.vim.org/scripts/script.php?script_id=2540
[neocomplcache]: http://www.vim.org/scripts/script.php?script_id=2620
[Tagbar]: http://www.vim.org/scripts/script.php?script_id=3465

Acknowledgements
----------------
- The project refers to [vgod] and [vgod's vimrc]. I'm really thanks to him showing amazing tips. :D
- [c9s] brings me spirits of vim and git.
- I learned the usage of git-submodule from [here][git-submodule].

[vgod]: https://github.com/vgod
[vgod's vimrc]: https://github.com/vgod/vimrc
[c9s]: https://github.com/c9s
[git-submodule]: http://josephjiang.com/entry.php?id=342
