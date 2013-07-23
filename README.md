# Summary

I created this project because I wanted to use Angular with Coffee-Script and Bootstrap and could not find a good seed project.  The way I structured the directory was to put all files that need to be compiled in `/src`.  If you use the recommended compile scripts below the will automatically be put into the correct locations.  I also included an Express server that servers the static files from `/public` on `http://0.0.0.0:4000`.

The project combined into a prebuilt package the following:

* Angular
* Bootstrap
* Coffee-Script
* D3
* jQuery
* LESS

If you would like to remove a specific library it should be as easy as deleting the file and the link to the file in `index.html`.

## Quick Start

1. Compile the code ( see below for help and output directories )
2. Start server.js
3. Navigate to http://0.0.0.0:4000 ( this can be changed in `/src/coffee/server.coffee` )


**DO NOT EDIT ANY .JS or .CSS FILES!**

These files should be written in Coffee-Script or LESS and compiled.

All coffee and less files are stored in the `/src` folder. If using the code below they will automatically compile to the correct locations.

## How to auto compile and watch for file changes

Coffee-Script: run from `/src/coffee`
```Javascript
coffee --output ../../ --watch --compile .
```

LESS: run from `/src/less`
```Javascript
node less-watch-compiler.js public/css ../../public/css
```

Express Server: run from `/`
```Javascript
nodemon server.js
```

# Included Libraries and Frameworks
### Client
All packages have been minified, bootstrap is in .css not .less format.

* [Angular v1.0.7](http://angularjs.org/)
* [Bootstrap v2.3.2](http://twitter.github.io/bootstrap/)
* [D3 v3](http://d3js.org/)
* [jQuery v2.0.3](http://jquery.com/)

### Node Server
#### Included
* [Express v3.3.4](http://expressjs.com/)
* [LESS Watch Compiler](https://github.com/jonycheung/Dead-Simple-LESS-Watch-Compiler)

#### Required Node Installs
* [Coffee-Script](http://coffeescript.org/)
* [LESS](http://lesscss.org/)
* [NodeMon](https://github.com/remy/nodemon) **Optional**

These can be installed globally using:
```Javascript
npm install -g [package]
```
