# Game-Icons.net Font

It has become a popular technique to encode scalable vector icons as fonts. Once these icons are converted to a font, they can be conveniently inserted into your own text using any application that supports fonts, just like the wingding or symbol fonts that came with your operating system.

This repository contains date-stamped font versions of the 3000+ scalable vector icons from [Game-icons.net](http://game-icons.net) made using [FontCustom](https://github.com/FontCustom/fontcustom), as well as a script to download the latest icons and generate a new font.

## About

This project was created by Todd Fast <todd@toddfast.com>.

You can find the latest version of this project at [https://github.com/toddfast/game-icons-net-font](https://github.com/toddfast/game-icons-net-font).

## License

The original icons and the contents of this archive are provided under the Creative Commons [Attribution 3.0 Unported (CC BY 3.0)](https://creativecommons.org/licenses/by/3.0/) license.

## Installation and Usage

If you are doing this for the first time, you can just grab the latest font:

[`/distro/game-icons-net-font-latest.zip`](https://github.com/toddfast/game-icons-net-font/raw/master/distro/game-icons-net-font-latest.zip) (click to download)

If you are looking for an updated version of the font with newer glyphs, you will need to pick a date-stamped version of the font to install from the `distro` directory of this repo. (Generally you will still want the latest version, unless you are trying to synchronize with other people on a specific version.)

Download the archive of your desired version and unpack it locally. Note, each version will look like a separate, individual font to your system. This scheme ensures that use of older versions of the font are not disturbed by newer versions.

To install the font, follow the instructions listed below:

### Use in Adobe Illustrator

To use the font in Adobe Illustrator, copy the TrueType font file you want to use,

    game-icons-net-<datestamp>.ttf

to the following location and restart Illustrator:

	/<Adobe Illustrator root directory>/Fonts

On OSX, the Illustrator root directory can be found in your `/Applications` directory.

Once installed, within Illustrator, first select a text frame object and enter text editing mode (where the caret is visible). Then, choose `Type > Glyphs` from the top menu to open the Glyphs palette, select the appropriate `game-icons-net-<datestamp>` font from the drop-down box at the bottom of the dialog, and double-click any displayed glyph to insert it at the caret location. Once inserted, you can copy and paste it just like any piece of text.

### Use in other desktop applications

To use the font in local applications that do not support application-specific font installation, install the font using your operating system's font installation feature. For example, on OSX, double-click the `.ttf` font file to open it in Font Book and then choose "Install Font". Note, you may receive a warning that the font has some issues, but I've been able to use such fonts without problems. YMMV.

Once installed, you can use this font just like any other font in any application on your computer that supports fonts. Within an application, you'll need to use the feature that allows you to insert symbols or glyphs, or you can use your operating system's font browser to browse glyphs and copy/paste them into the application.

### Use in HTML

To use in HTML, follow FontCustom's instructions at [https://github.com/FontCustom/fontcustom](https://github.com/FontCustom/fontcustom).

## Locating Glyphs

With 3000+ icons, finding glyphs within the font can be a challenge. Glyphs are sorted within the font alphabetically by the original game-icons.net icon name, though this information is lost during converstion to a font.

Therefore, to make locating glyhs easier within the font, I have added "index" glyphs showing the letters of the alphabet that demarcate sections of glyphs by the first letter of their original icon name.

To find a specific glyph, search for the icon you want to use on [game-icons.net](game-icons.net), note its name, and then search visually through the font using the index glyphs to get you close to the glpyh you want.

## Compatibility

This custom font is generated as a TrueType font and should be broadly compatible with any system that uses TrueType fonts.

Please note, if you send a document created on your computer to someone else and it contains glyphs from this font, the document will not render properly unless the recipient has the same font version installed. You can also send them the font file with instructions on how to install it (or point them to this repo), but as an easier solution, some document formats like PDF allow you to embed fonts and potentially avoid this problem.

Also note that, for techical reasons, **font files generated from different icon sets are unfortunately not compatible with one another**. This means that if you try to switch versions of the font to get access to new glyphs, existing glyhs will shift to new glyphs and will have to be relocated.

The reason for this problem is that the codepoints used for the glyphs is not stable across versions of the font. While it would be possible to preserve codepoint information, due to the limitations of FontCustom, new glyphs would be appended at the end of the font, making finding glyphs considerably harder since they would no longer be alphabetically sorted.

Instead, I suggest installing a newer font version as needed alongside the older font version to get access to newer glyphs, and use both the older and newer versions in your application until you have an opportunity to relocate glyphs in the older font version to the newer font version.