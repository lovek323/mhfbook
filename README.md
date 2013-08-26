See the wiki for a project description

## DIRECTORY STRUCTURE ##

    year/part/chapter/section/post-id.tex

year is the four-digit year of the original post

After very little thought, I've decided to go with the divisions on the MHF
site itself. Descriptions for chapters, etc. are also taken from Wikipedia. At
the moment, we'll only be dividing into three levels, but sub-sections will be
added if beneficial.

The idea is that if it's in the calculus sub-forum, it's probably calculus. If
something's obviously not or you can't justify its inclusion in that section,
place it in the most appropriate section.

`post-id` is the original post id on the mathhelpforum.com web site


## SOFTWARE REQURIED ##

* latex and associated packages (uses `times`, `url`, `amssymb`, `graphicx`,
  `varioref`, `geometry`, `framed`, `color`, `iwona`, `sectsty`, `cclicenses`,
  `multienum`, `cancel` and `makeidx`)
* [asymptote](http://asymptote.sourceforge.net/)

So far, I haven't been able to find a DVI viewer that is able to correctly
display the cclicenses glyphs.


## DOWNLOADING A SNAPSHOT ##

You can download a snapshot from the github web site:
http://github.com/lovek323/mhfbook


## COMPILING ##

In one of the year subdirectories (e.g., 2005), execute

./build.sh

This will create a book-name.dvi (e.g., 2005.dvi) file, which you can view in
your favourite dvi viewer (e.g., xdvi).


## PLEASE ##

* Do not commit compiled files (eps, pdf, dvi, etc.). Only commit the source
  files. Anyone with a properly set-up system will be able to compile the files
  and we'll release compiled versions at appropriate milestones.
* Give good commit messages if you can be bothered.
* Create pull requests for your changes (doesn't need to be in a separate
  branch)


## PROBLEMS ##

If there's a question you're excluding for a good reason, add it to the PROBLEMS
file.

