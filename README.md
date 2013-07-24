# Summary

I created this project because I wanted to use Angular with Coffee-Script and Bootstrap and I could not find a good seed project.  I structured the directory in such a way that all files requiring compiling are stored in `/src`.  If you use the recommended compiler scripts below, all compiled files will automatically be put into the correct locations.  I also included an Express server that servers the static files from `/public` on `http://0.0.0.0:4000`.

This project combines into a prebuilt package:

* Angular
* Bootstrap
* Coffee-Script
* D3
* LESSs

If you would like to remove a specific library it should be as easy as deleting the file(s) and the link to the file in `index.html`.

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

Express: run from `/`
```Javascript
nodemon server.js
```

# Included Libraries and Frameworks
### Client
All packages have been minified, bootstrap is in .css not .less format.

* [Angular v1.0.7](http://angularjs.org/)
* [Bootstrap v2.3.2](http://twitter.github.io/bootstrap/)
* [D3 v3](http://d3js.org/)

### Node Server
#### Included
* [Express v3.3.4](http://expressjs.com/)
* [LESS Watch Compiler](https://github.com/jonycheung/Dead-Simple-LESS-Watch-Compiler)

#### Required Node Installs
* [Coffee-Script](http://coffeescript.org/)
* [LESS](http://lesscss.org/)
* [NodeMon](https://github.com/remy/nodemon) *optional*

These can be installed globally using:
```Javascript
npm install -g [package]
```
