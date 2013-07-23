#Summary

A seed project that runs on a node server with the following libraries:
* Angular
* Bootstrap
* Coffee-Script
* D3
* jQuery
* LESS

####Quick Start

1. Compile the code ( see below for help and output directories )
2. Start server.js
3. Navigate to http://0.0.0.0:4000 ( this can be changed in /src/coffee/server.coffee )

**DO NOT EDIT ANY .JS or .CSS FILES!**
All coffee and less files are stored in the /src folder. If using the code below they will automatically compile to the correct locations.

####How to auto compile and watch for changes

Coffee-Script: run from /src/coffee
'''
coffee --output ../../ --watch --compile .
'''

LESS: run from /src/less
'''
node less-watch-compiler.js public/css ../../public/css
'''

Express Server: run from /
'''
nodemon server.js
'''

#Included Libraries and Frameworks
###Client
All packages have been minified, bootstrap is in .css not .less format.
* [Angular v1.0.7](http://angularjs.org/)
* [Bootstrap v2.3.2](http://twitter.github.io/bootstrap/)
* [D3 v3](http://d3js.org/)
* [jQuery v2.0.3](http://jquery.com/)
###Node Server
####Included
* [Express v3.3.4](http://expressjs.com/)
* [LESS Watch Compiler](https://github.com/jonycheung/Dead-Simple-LESS-Watch-Compiler)

####Required Node Installs
* [Coffee-Script](http://coffeescript.org/)
* [LESS](http://lesscss.org/)
* [NodeMon](https://github.com/remy/nodemon) **Optional**
These can be installed globally using:
'''
npm intall -g [package]
'''
