turbo-octo-nemesis aka. Fordypningsprosjekt
==================

Fordypningsprosjekt Magnus Krane og Magnus Bae
Høst 2013


To install LaTeXTools sublime plugin
------
 * Install Package Control: https://sublime.wbond.net/installation
 * Restart sublime
 * Preferences > Package Control
 * Install package > LaTeXTools
 * You should be good to go.

To build PDF
-------
Use the included Makefile (On windows? Cygwin then? :P)
 * ```make``` Creates PDF and leaves log files
 * ```make pdf``` Creates PDF and cleans up excess files
 * ```make open``` Creates PDF and opens it in default PDF reader (Mac) or Evince (Linux)


 TODOs
 ========
 Things that needs to be done to the report before delivery:

REMEMBER TO CHANGE PAGES ON SUBDOCUMENTS
-------------

Bae:
  * Write acknowledgements
  * Write Summary
     * Must also write Norwegian Summary
  * Write the rest of the shit

Shared: 
  * ~~Put a table of quality requirements in the supplementary specification (ref. Larman)~~

Krane:
  * ~~Fix frontpage~~
  * ~~Fix bullet points in tables in vision (preferably just a blank line inbetween)~~
  * ~~Fix Appendixes in index (\phantomsection something something) and formatting of appendix-frontpages to be styled like Appendix A~~
     * ~~Appendix number in TOC of thesis.~~
     * ~~Vision frontpage on all appendixes.~~
     * ~~The toc of appendixex needs too have the appendix number prepended.~~
  * ~~Fix pagenumbering in appendices, Preferably they could be "Appendix A nn" where nn is pagenumber in correct format (dunno if roman or whatnot)~~
  * ~~"Gobble" pagenumber on front page of thesis~~
  * ~~Find best practice for references and abbrevations in appendices~~
  * ~~Find a way to make books and articles not cited appear in bibliography~~
  * ~~Add footnote in bibliography about "loc." being kindle location and must not be confused with normal page numbers. See example in bachelor thesis.~~
  * ~~Some of the Internet articles cited (@misc) are lacking either author or magazine, but it's not a field counted in misc(seemingly). Can this be addressed so we can get both author and the title of the publication?~~
     * ~~Decide on publication or author if not. What is best practice?~~
     * ~~Some have author, some have website -> consistency!~~
  * <del>Make sure that citations look uniform (there is now a variation of "some sentence[1]." and "some other sentence [2].")</del>
     * ~~Putting the "[1]" after a full stop (end of paragraph) means that the content of that paragraph comes from this information, and the full stop should not be moved to be behind the reference notation. However, also here we want uniform formatting. So use ".[1]"" or ". [1]", whatever looks best. I have a weakness for the latter.~~
     * ~~RegEx search and replace should do the trick instead of manual sifting.~~
  * ~~Make sure that names of publications are correct in bibliography, put in braces and shit. (Ars Technica, not T. Ars)~~
  * ~~Make non-fullsize images in background chapter centered.~~
  * ~~Change automaticly paragraph styling.~~
     * ~~Linebreak without indent~~
     * ~~Satisfied with excisting~~
  * ~~Can we find a way to reference included PDFs, at least starting page and letter?~~
  * ~~Fix table in chapter 4.3 "Key high-level goals..." in vision~~
  * ~~Fix usecase.sty for breaking the line (see pagenr 9 in req.pdf (pdf pagenumbering))~~
  * ~~Take screenshot of POC and upload~~
