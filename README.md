# Summary

I created this project because I wanted to use Angular with Coffee-Script and Bootstrap and I could not find a good seed project.  I structured the directory in such a way that all files requiring compiling are stored in `/src`.  Grunt is included to automate a lot of the tasks such as compiling.  I also included an Express server that servers the static files from `/app` on `http://localhost:4000`.

This project combines into a prebuilt package:

* Angular - MVW - lets you write client-side web applications as if you had a smarter browser.
* Bootstrap - Sleek, intuitive, and powerful front-end framework for faster and easier web development.
* Coffee-Script - a little language that compiles into JavaScript.
* D3 - a JavaScript library for manipulating documents based on data.
* Node - a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications.
* Express - a minimal and flexible node.js web application framework.
* Karma - Spectacular Test Runner for JavaScript
* Grunt - The JavaScript Task Runner
* Stylus - Expressive, dynamic, robust CSS

## Quick Start

1. `git clone https://github.com/EpiphanyMachine/seed.git`
2. install global node dependencies `npm install -g <package>` for each: `grunt-cli` `coffee-script` `karma` `stylus`
3. `cd seed`
4. `npm install` - this will install all local dependencies as listed `package.json` file
5. `grunt` - this will compile all coffee-script and stylus files
5. Navigate to `http://localhost:4000`


**DO NOT EDIT ANY .JS or .CSS FILES!**

These files should be written in Coffee-Script or Stylus.

All coffee and stylus files are stored in the `/src` folder.  Grunt will compile these for you!


## Included Libraries and Frameworks
### Client
All packages have been minified, bootstrap is in .css not .less format.

* [Angular v1.0.7](http://angularjs.org/) from the [Angular Seed Project](https://github.com/angular/angular-seed)
* [Bootstrap v2.3.2](http://twitter.github.io/bootstrap/) ported into [Bootstrap-Stylus](https://github.com/Acquisio/bootstrap-stylus)
* [D3 v3](http://d3js.org/)

### Node
#### Included Local Packages

To install the local packages run `npm install` in `seed` directory after cloning.

* [Express v3.3.4](http://expressjs.com/)
* [Grunt v0.4.1](http://gruntjs.com/)

## Required Global Node Installs (not included)
* [Coffee-Script](http://coffeescript.org/)
* [Grunt-CLI](https://github.com/gruntjs/grunt-cli)
* [Karma](http://karma-runner.github.io/)
* [Stylus](http://learnboost.github.io/stylus/)
* [NodeMon](https://github.com/remy/nodemon) *optional*

These can be installed globally using:
```Javascript
npm install -g [package]
```

## How to auto compile and watch for file changes

From `/seed`
```Javascript
grunt watch
```

## Karma Overview

Karma can run unit and end-to-end tests.  Please check out the information available on [their site](http://karma-runner.github.io/).

App code testing is done with Karma's unit tests.  You will find multiple files in the testing directory related Angular here: `seed/test/unit/*`.

End-to-end (e2e) testing can also be done by Karma to test front end interactions with your application.  You will find this testing file located in `seed/test/e2e/scenarios.js`

Both of these tests can be run automatically using grunt, see the section below for more information.

## How to run karma tests

1. Navigate to `seed` directory
2. Open two terminal windows
  * Terminal 1: `node scripts/web-server.js` - It is important to run it from this path
  * Terminal 2: `grunt test` - This will compile all files and run karma tests

The `seed/scripts/web-server.js` serves the `seed` directory which includes files required for testing.  It can be accessed from `http://localhost:8000`.

The included express server `seed/server.js` only servers the `seed/app` which can be used to serve the application.  It can be access from `http://localhost:4000`.
