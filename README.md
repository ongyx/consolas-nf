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

## Important Update Notice: Nerd Font v1.2.0 → v3.3.0

For detailed information about the changes between Nerd Font v1.2.0 and v3.3.0, please refer to the [Nerd Font changelog].

### Font name change

With the update from Nerd Font v1.2.0 to v3.3.0, the naming convention for patched fonts has changed. As a result, the font name has been updated from:

| **Old name** | **New name**            |
| ------------ | ----------------------- |
| Consolas NF  | Consolas Nerd Font Mono |

If you are using **Consolas NF** in your editor, terminal, or configuration files, you will need to update your font references accordingly.

#### Example Fix (VS Code)

**Before (old version 1.2.0):**

```json
"editor.fontFamily": "Consolas NF"
```

**After (new version 3.3.0):**

```json
"editor.fontFamily": "Consolas Nerd Font Mono"
```

### Changed or Removed Glyphs

Between Nerd Font v1.2.0 and v3.3.0, several glyphs have been changed or removed.

To check the available glyphs, please visit the [Nerd Font glyph cheat sheet].

## Credits

Znuff for creating the [original] patched fonts.

Consolas is a trademark of the Microsoft group of companies.

[Nerd Fonts]: https://github.com/ryanoasis/nerd-fonts
[vim-airline]: https://github.com/vim-airline/vim-airline
[lightline.vim]: https://github.com/itchyny/lightline.vim
[powerline]: https://github.com/powerline/powerline
[installed]: http://designwithfontforge.com/en-US/Installing_Fontforge.html
[Nerd Font changelog]: https://github.com/ryanoasis/nerd-fonts/releases
[Nerd Font glyph cheat sheet]: https://www.nerdfonts.com/cheat-sheet
[original]: https://github.com/Znuff/consolas-powerline
