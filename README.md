# Game-Icons.net Font

It has become a popular technique to encode scalable vector icons as fonts. Once these icons are converted to a font, they can be conveniently inserted into your own text using any application that supports fonts, just like the wingding or symbol fonts that came with your operating system.

This repository contains font versions of the 3000+ scalable vector icons from [Game-icons.net](http://game-icons.net) made using [FontCustom](https://github.com/FontCustom/fontcustom), as well as a script to download the latest icons and generate a new font. The original icons and the contents of this repository are provided under the Creative Commons [Attribution 3.0 Unported (CC BY 3.0)](https://creativecommons.org/licenses/by/3.0/) license.

## Usage

My primary use of these fonts is within Adobe Illustrator, but they can also be used like other FontCustom fonts in HTML pages, or in other applications on your computer.

With 3000+ icons, finding glyphs within the font can be a challenge. Glyphs are sorted within the font alphabetically by the original game-icons.net icon name, though this information is lost during converstion to a font.

Therefore, to make locating glyhs easier within the font, I have added "index" glyphs showing the letters of the alphabet that demarcate sections of glyphs by the first letter of their original icon name. To find a specific glyph, search for the icon you want to use on [game-icons.net](game-icons.net), note its name, and then search through the font using the index glyphs to get you close to the glpyh you want.

Also note, due to the limitations of FontCustom, font files generated from different icon sets are not compatible with one another. This means that if you try to switch versions of the font—say to get an updated set of glyphs—existing glyhs will shift to new glyphs and will have to be relocated.

### Use in HTML

To use in HTML, you will want to clone this repo to get all the font-related files, identify which font file you want to use (according to date stamp), and then follow FontCustom's instructions at [https://github.com/FontCustom/fontcustom](https://github.com/FontCustom/fontcustom).

### Use in Adobe Illustrator

To use the fonts in Adobe Illustrator, identify the TrueType font file you want to use in this repo:

`/<datestamp>/game-icons-net-<datestamp>/game-icons-net-<datestamp>.ttf`

Then, copy the font file to the following location and restart Illustrator:

	<Adobe Illustrator root directory>/Fonts

On OSX, the Illustrator root directory can be found in your `/Applications` directory.

### Use in desktop applications

To use the fonts in other local applications, install the font using your operating system's font installation feature. For example, on OSX double-click the `.ttf` font file to open it in Font Book and then choose "Install Font".