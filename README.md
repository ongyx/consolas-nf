# consolas-nf

Consolas font patched with [Nerd Fonts].

## Usage

Download all fonts and install them, then configure your vim plugin of choice ([vim-airline], [lightline.vim] or [powerline]) to use the glyphs.

To save disk space and bandwidth, the `nerd-fonts` submodule is configured to shallow clone (`--depth=1`).
It is still quite large (~4GB) in size, so do not clone this repo unless you want to patch the fonts from source.

The commands below will clone this repo including the `nerd-fonts` submodule and patch the fonts.

```
git clone --recurse-submodules https://github.com/ongyx/consolas-nf
cd consolas-nf
./patch.sh
```

Make sure you are running this inside of a WSL2 shell and `fontforge` is [installed].
If you are using Git Bash/MSYS2 the script should work but it is untested.

## Credits

Znuff for creating the [original] patched fonts.

Consolas is a trademark of the Microsoft group of companies.

[Nerd Fonts]: https://github.com/ryanoasis/nerd-fonts
[vim-airline]: https://github.com/vim-airline/vim-airline
[lightline.vim]: https://github.com/itchyny/lightline.vim
[powerline]: https://github.com/powerline/powerline
[installed]: http://designwithfontforge.com/en-US/Installing_Fontforge.html
[original]: https://github.com/Znuff/consolas-powerline
