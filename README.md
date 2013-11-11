templates
=========

My templates for all kinds of stuff (programming contests, homework, etc.), plus a convenient little system for creating and compiling files based on them.

Everything that isn't `*.make` or `template_functions.sh` is some template of mine, feel free to look around and steal all those great ideas, I stole most of them too.

How to use my template system
-----------------------------

### `template_functions.sh`
Contains all the functions for working with the system. Source this file to have access to the following functions. You can optionally do something like `source template_functions.sh 1` or set the `TEMPLATE_FUNCTIONS_ALIASES` environment variable to get quick shorthands for most of these functions.

- <b>`template_for`</b> `target_filename|extension` `[template_name='default']`: returns the full path to the corresponding template (matching either the exact basename of the target file if any, or the template name + the extension)
- <b>`template_new`</b> `target_filename` `[template_name='default']`: creates a new file named `target_filename` from the corresponding template -- *alias: `tn`*
- <b>`template_edit`</b> `target_filename` `[template_name='default']`: calls `template_new` and opens the file with your `$EDITOR` -- *alias: `te`*
- <b>`template_make`</b> `target_filename` `[template_name='default']`: compiles the file using the correct Makefile (see below) -- *alias: `tm`*

You should set your template directory as `TEMPLATE_DIR` here.

### `*.make`
Makefiles describing how to compile stuff. When you call `template_make myfile.<ext> mytemplate`, `make myfile.<out_ext>` will be called with all Makefiles named `mytemplate.<ext>-<out_ext>.make`.
Examples:
- compile your C++ homework: create `homework.cpp-bin.make`; calling `template_make file.cpp homework` will execute `make -f homework.cpp-bin.make file.bin`
- create both DVI and PDF from LaTeX: create `default.tex-dvi.make` and `default.tex-pdf.make`; calling `template_make file.tex` will execute `make -f default.tex-dvi.make file.dvi ; make -f default.tex-pdf.make file.pdf`

See the `*.make` files in this repo for makefile examples.

### Everything else
Your pretty templates (whatever you want, I just `cp` those; see `template_for` for the resolution description).

---------------------------

See my files in the repo for example usage and great templates.
If you have questions, ask Google. If you still have questions, ask me.

**License**: [Creative Commons Attribution 3.0 Unported *(CC BY 3.0)*](http://creativecommons.org/licenses/by/3.0/deed.en_US)
