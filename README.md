# Summary

I created this project because I wanted to use Angular with Coffee-Script and Bootstrap and I could not find a good seed project.  I structured the directory in such a way that all files requiring compiling are stored in `/src`.  Grunt is included to automate a lot of the tasks such as compiling.  I also included an Express server that servers the static files from `/app` on `http://localhost:4000`.

This project combines into a prebuilt package:

* Angular - MVW - lets you write client-side web applications as if you had a smarter browser.
* Bootstrap - Sleek, intuitive, and powerful front-end framework for faster and easier web development.
* Coffee-Script - a little language that compiles into JavaScript.
* D3 - a JavaScript library for manipulating documents based on data.
* Express - a minimal and flexible node.js web application framework.
* Grunt - The JavaScript Task Runner
* Karma - Spectacular Test Runner for JavaScript
* Node - a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications.
* Stylus - Expressive, dynamic, robust CSS

## Quick Start

This will compile all required files to view the basic app page (from the angular seed project) and start a web server to view the app.  If you run into problems visit the section about globally required node packages.

1. `git clone https://github.com/EpiphanyMachine/seed.git`
2. install global node dependencies `npm install -g <package>` for each: `grunt-cli` `coffee-script` `karma` `stylus`
3. `cd seed`
4. `npm install` - this will install all local dependencies as listed `package.json` file
5. `grunt` - this will run the default grunt task (compile, start server, watch for changes)
6. Navigate to `http://localhost:4000` and if using livereload activate the extension


**DO NOT EDIT ANY .JS or .CSS FILES!**

These files should be written in Coffee-Script or Stylus.

All coffee and stylus files are stored in the `/src` folder.  Grunt will compile these for you!


## Included Libraries and Frameworks
### Client
All packages have been minified, bootstrap is in .css not .less format.

* [Angular v1.0.7](http://angularjs.org/) from the [Angular Seed Project](https://github.com/angular/angular-seed)
* [Bootstrap v2.3.2](http://twitter.github.io/bootstrap/) ported into [Stylus](https://github.com/Acquisio/bootstrap-stylus) and [Angular](https://github.com/angular-ui/bootstrap)
* [D3 v3](http://d3js.org/)

### Node
#### Included Local Packages

To install the local packages run `npm install` in `seed` directory after cloning.

* [Express v~3.3.4](http://expressjs.com/)
* [Grunt v~0.4.1](http://gruntjs.com/)
* [grunt-contrib-coffee v~0.7.0](https://github.com/gruntjs/grunt-contrib-coffee)
* [grunt-contrib-stylus v~0.6.0](https://github.com/gruntjs/grunt-contrib-stylus)
* [grunt-contrib-watch v~0.5.1](https://github.com/gruntjs/grunt-contrib-watch)
* [grunt-karma v~0.4.5](https://github.com/karma-runner/grunt-karma)
* [grunt-concurrent v~0.3.0](https://github.com/sindresorhus/grunt-concurrent)
* [grunt-nodemon v~0.0.8](https://github.com/ChrisWren/grunt-nodemon)
* [grunt-exec v~0.4.2](https://github.com/jharding/grunt-exec)

## Required Global Node Packages (not included)
* [Coffee-Script](http://coffeescript.org/)
* [Grunt-CLI](https://github.com/gruntjs/grunt-cli)
* [Karma](http://karma-runner.github.io/)
* [Stylus](http://learnboost.github.io/stylus/)

These can be installed globally using:
```Javascript
npm install -g [package]
```

## How to auto compile live reload changes

See the browser extension how-to [here](http://feedback.livereload.com/knowledgebase/articles/86242-how-do-i-install-and-use-the-browser-extensions-)
Shortcuts [Chrome](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei)
[Firefox](http://download.livereload.com/2.0.8/LiveReload-2.0.8.xpi)

From the `/seed` directory run `grunt` this starts the default task (compile, start server, watch for changes)

## Karma Overview

Karma can run unit and end-to-end tests.  Please check out the information available on [their site](http://karma-runner.github.io/).

App code testing is done with Karma's unit tests.  You will find multiple files in the testing directory related Angular here: `seed/test/unit/*`.

End-to-end (e2e) testing can also be done by Karma to test front end interactions with your application.  You will find this testing file located in `seed/test/e2e/scenarios.js`

Both of these tests can be run automatically using grunt, see the section below for more information.

### How to run karma tests

From the `/seed` directory run `grunt test` this starts the test task (compile, start test server, run karma once)


## The included web servers

These are automatically started by grunt when needed, you do not need to manually run either of these servers.

The `seed/scripts/web-server.js` serves the `seed` directory which includes files required for testing.  It can be accessed from `http://localhost:8000`.

The included express server `seed/server.js` only servers the `seed/app` which can be used to serve the application.  It can be access from `http://localhost:4000`.
