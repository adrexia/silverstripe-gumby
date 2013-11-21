# CWP Gumby Theme
_(Note: Still in active development)_
This is intended to be a straight substitution of bootstrap for gumby (http://gumbyframework.com/), using up to date frontend coding standards. CWP base templates have been, or will be, updated to use the gumby scss framework with scss written to fill in the gaps for all CWP features. 

Accessibility is being taken into account, but otherwise the theme uses the gumby defaults with minor tweaking to fit into the cwp template environment.

## Purpose
This theme is intended as a starting point for development, rather than a theme to be used out of the box. For this reason, it has not been styled to *look* like the CWP default theme, and design modifications have been kept to a minimum. Hopefully this should mean you spend less time taking out design features you don't want, and have more time to spend on adding your own themes.


## Browser support
* Firefox, Chrome
* IE8 and above (intended - but not yet tested)
* Android, iPhone, iPad (intended - but not yet tested)

## Progress

### Done
* Generic Page
* Homepage
* EventsHolderPage
* NewsHolderPage
* EventsPage
* NewsPage
* Registry Page

### Started
* SitemapPage

### TODO
* Finish SitemapPage
* Search Results Page
* UserForms
* Browser testing

## How to use
Either grab the git url, and clone into your themes directory or add it to your composer file [more info to come]
``` git clone https://gitlab.cwp.govt.nz/nguyer/cwp-gumby-theme.git ```

    
Be sure to remove the cwp/default-theme from your composer file if you are using the basic recipe.

It is intended that development be done on the Sass files, rather than editing the CSS directly. Being a native to Sass is one of Gumby's selling points.
Each component has been split out into it's own file where possible. CSS that related directly to CWP features, but isn't big enough to justify having an individual file, 
and in _cwp-elements.scss. Use layout.scss, or typography.scss as indexes to component files.

I recommend you read this page if you have never used Gumby, Sass, or Compass before: 

* http://gumbyframework.com/docs/#!/ 

It should help you get started. If you need more try:

* http://sass-lang.com/
* http://compass-style.org/

When you have the theme and have renamed it to suit your project, open _settings.scss (sass/var/_setting.scss) and edit the theme name variable to match. This will update all scss links to point to your theme. Remember to run compass watch on the folder to compile your scss.

At the moment all extra javascript and css required is included in the templates. You should override the cwp BasePage.php function that includes scripts and css to prevent it trying to include unwanted bootstrap files. You can also move the extra js/css into your new function if you want to use the power of combine_files.

## Screenshot
_HomePage_

![Home page screen shot](https://gitlab.cwp.govt.nz/nguyer/cwp-gumby-theme/raw/master/images/demo-screenshot.png "Home page screen shot")