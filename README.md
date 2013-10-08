# Pattern Library

This is a quick framework that generates an HTML page of patterns. Jeramy Keith (@adactio) explains why you might want that [here](http://adactio.com/journal/5028/). He also made a [PHP pattern generator](https://github.com/adactio/Pattern-Primer), and @sricho made a [Sinatra-based version](https://github.com/sricho/Pattern-Primer-Ruby), on which this is partly based.

I wanted a quick way of adding patterns and a little more basic setup stuff along with it.

By default, it includes pattern files for some of the major elements in twitter bootstrap, although you can quickly remove them simply by deleting the HTML Files.

# To Run

It's configured using [Guard](https://github.com/guard/guard) and [guard-livereload](https://github.com/guard/guard-livereload), so you can just run `bundle install` then `bundle exec guard` and head to <http://localhost:3000>.

# To Add Patterns

Run

````
rake pattenrs:create my new pattern
````

This will add `my-new-pattern.html` to the `/patterns` directory with the following contents:

````html
<div class="my-new-pattern">

</div>
````

and `my-new-pattern.scss` to the `/patterns-scss` directory:

````css
.my-new-pattern {
	
}
````

It will also add the nececarry `@import` statement to `_patterns.scss` for you.

# Structure

````
/patterns					Contains individual pattern.html files
/pattenrs-scss    Contains the coresponding pattern.scss files
/sass             Contains generic SCSS
````

The rest of the structure, including the /sass directory are broadly similar to those in my project templates for [CodeKit](https://github.com/manyhatsdesign/project-template-codekit) and [hammer](https://github.com/manyhatsdesign/project-template-hammer). I'll leave you to work out the rest :-)

# Extras

- It includes [Bourbon](https://github.com/thoughtbot/bourbon), so you can ball any of the mixins.
- You can edit the HTML for patterns directly in the browser, and see your changes straight away.

# Credit

- Thanks to @adictio and @sricho for a little ruby implementation.
- This one's by [Danny Smith](https://github.com/dannysmith)