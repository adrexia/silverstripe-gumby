# CWP Default Theme

This is the default theme for CWP

This theme is based on Twitter's Bootstrap, and designed to work with the CWP module which provides various default
page types. Both this theme and the CWP module are included with the standard CWP site recipe. If you have altered
your recipe, see here for details on adding both this theme & the CWP module to it:

TODO: Link to recipe docs once done.

Although usable by itself, the primary intention of this theme is to provide a common base and examplar of good theme
design for design agencies to base their work on.

When customising, you can choose to work either with the SCSS files (recommended), or with the CSS

## SCSS/SASS

Sass (Syntactically Awesome Stylesheets) is a preprocessed stylesheet language, compiling to CSS. Sass adds nested
rules, variables, mixins, selector inheritance, functions and other such useful things to CSS3. SCSS is a syntax of
Sass based on CSS syntax.

Sass uses a ruby gem to compile. If you have not used Sass before, you may need to install the relevant gems
(in terminal: sudo gem install sass && gem install compass). SCSS is a form of Sass that uses CSS based syntax.

For more information on how to use SCSS, and full API documentation see:

http://sass-lang.com/

## Bootstrap

Twitter Bootstrap is a free collection of tools for creating websites and web applications. It contains HTML and
CSS-based design templates for typography, forms, buttons, charts, navigation and other interface components, as well
as optional JavaScript extensions. Bootstrap was originally written in Less, but has been ported to SCSS. This theme
uses the SCSS port of Bootstrap. More information on the Twitter bootstrap api can be found here:

http://twitter.github.com/bootstrap/

If you haven't used bootstrap before, the website is a good place to start. It is a valuable resource when building
websites with this theme.

## Compass

Compass is an open-source CSS Authoring Framework. To keep things simple, we have only made minor use of the compass
framework (to allow gradients in IE9). However, if you wish to use more of the features provided by compass, just import
the libraries you are interested in at the top of the relevant scss files.

More information on Compass can be found here:

http://compass-style.org/
