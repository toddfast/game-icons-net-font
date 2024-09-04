# Updates 2024

Fontcustom is quite old software now, and my attempts to get everything running on a Apple Silicon Mac in 2024 were not successful.

The core issue seems to be in fontforge, with the following Python error:

```
cd target/20240903; fontcustom compile glyphs --name "game-icons-net-test" --no-hash --debug
       debug  Generated files will be saved to `game-icons-net-test/`.
       debug  Using options:
                {:input=>{:vectors=>"glyphs", :templates=>"glyphs"},
                :output=>
                 {:fonts=>"game-icons-net-test",
                  :css=>"game-icons-net-test",
                  :preview=>"game-icons-net-test"},
                :config=>false,
                :templates=>["css", "preview"],
                :font_name=>"game-icons-net-test",
                :font_design_size=>16,
                :font_em=>512,
                :font_ascent=>448,
                :font_descent=>64,
                :css_selector=>".icon-{{glyph}}",
                :preprocessor_path=>nil,
                :autowidth=>false,
                :no_hash=>true,
                :css3=>false,
                :debug=>true,
                :force=>false,
                :quiet=>false,
                :copyright=>""}
      create  game-icons-net-test
      debug  Copyright (c) 2000-2023. See AUTHORS for Contributors.
       License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
       with many parts BSD <http://fontforge.org/license.html>. Please read LICENSE.
       Version: 20230101
       Based on sources from 2023-01-01 05:27 UTC-D.
      Core python package 'pkg_resources' not found: Cannot discover plugins
      Traceback (most recent call last):
        File "/Library/Ruby/Gems/2.6.0/gems/fontcustom-2.0.0/lib/fontcustom/scripts/generate.py", line 88, in <module>
          name = createGlyph(glyph, data['source'], data['codepoint'])
                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
        File "/Library/Ruby/Gems/2.6.0/gems/fontcustom-2.0.0/lib/fontcustom/scripts/generate.py", line 80, in createGlyph
          glyph.left_side_bearing = glyph.left_side_bearing - shift
          ^^^^^^^^^^^^^^^^^^^^^^^
      TypeError: 'float' object cannot be interpreted as an integer
error  `fontforge` compilation failed.
```

Apple remove Python 2.x from Mac OS in 2022, and I suspect this was an issue running with Python 3. Or, it's a problem with the fontcustom wrapper around fontforge.

My environment also wasn't set up for fontcustom, which required me to reinstall it with Homebrew and hunt down the correct file to patch (see README.md).

I'm not going to move forward further now, but I did find the [svgtofont](https://www.npmjs.com/package/svgtofont) project that might be a future replacement for fontcustom. It seems that there are also several interactive tools for converting SVG into fonts ([IcoMoon](https://icomoon.io/app/#/select) and [Glyphter](https://glyphter.com/)).

Some other interesting links I found along the way:

 * [FontForge scripting docs](https://fontforge.org/docs/scripting/scripting.html)
 * [Simple-SVG-to-Font-with-Fontforge](https://github.com/RobertWinslow/Simple-SVG-to-Font-with-Fontforge)
 * [Fantasticon](https://github.com/tancredi/fantasticon)
 * [Quick tutorial on how to convert SVG icons into a font (using IcoMoon)](https://www.reddit.com/r/FigmaDesign/comments/16z09e4/quick_tutorial_on_how_to_convert_svg_icons_into_a/)
 * [Creating icon fonts with vector software (i.e. inkscape) and fontforge?](https://stackoverflow.com/questions/12336401/creating-icon-fonts-with-vector-software-i-e-inkscape-and-fontforge)