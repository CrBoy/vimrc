CrBoy's vimrc
=============
`Author: CrBoy (http://github.com/CrBoy)`

Introduction
------------
This project is a set of [vim] configurations (vimrc, or vimfiles), which is convenient to the author. If [git] is installed on the machine, these settings could be installed by only one line of command on Windows.

[vim]: http://www.vim.org/
[git]: http://git-scm.com/

Install
----------------
**Prerequisite: Make sure GIT is installed**

Windows 7 (or Vista, I did not tested on it)

- Clone this repository into your machine, and put it on %UserProfile%\vimfiles
- Run the install.bat **as system administrator** (this script using `mklink` which is only available by admins)

Windows XP

1. Clone this repository into your machine, and put it on %UserProfile%\vimfiles
2. Create folder `vimfiles\autoload` and copy `vimfiles\bundle\pathogen\autoload\pathogen.vim` into it
3. Copy `vimfiles\vimrc` to `%UserProfile%\_vimrc`

Note that copying file would cause the version of file dismatch. If you'd like to modify them, don't forget sync them manually.

**No matter you are using which version of Windows, you may download the files instead of using git-clone.**

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
- [surround]
- [OmniCppComplete]

[pathogen]: http://www.vim.org/scripts/script.php?script_id=2332
[NERDTree]: http://www.vim.org/scripts/script.php?script_id=1658
[snipMate]: http://www.vim.org/scripts/script.php?script_id=2540
[neocomplcache]: http://www.vim.org/scripts/script.php?script_id=2620
[Tagbar]: http://www.vim.org/scripts/script.php?script_id=3465
[surround]: http://www.vim.org/scripts/script.php?script_id=1697
[OmniCppComplete]: http://www.vim.org/scripts/script.php?script_id=1520

Acknowledgements
----------------
- The project refers to [vgod] and [vgod's vimrc]. I'm really thanks to him showing amazing tips. :D
- [c9s] brings me spirits of vim and git.
- I learned the usage of git-submodule from [here][git-submodule].

[vgod]: https://github.com/vgod
[vgod's vimrc]: https://github.com/vgod/vimrc
[c9s]: https://github.com/c9s
[git-submodule]: http://josephjiang.com/entry.php?id=342
