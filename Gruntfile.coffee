module.exports = (grunt)->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    coffee:
      # compileWithMaps:
        # options:
        #   sourceMap: true
      compile:
        files:
          'server.js': 'src/coffee/node/server.coffee'  # 1:1 compile server file
          'app/js/app.js': ['src/coffee/angular/*.coffee']  # concat then compile angular js into single file

    concurrent:
        server_watch: ['nodemon', 'watch']
        test_server: ['exec:start_test_server', 'karma']

    exec:
      start_test_server:
        cmd: 'node scripts/web-server.js'
      notify:
        cmd: 'echo Server started at http://localhost:4000. Activate your LiveReload extension!'

    karma:
      e2e:
        configFile: 'config/karma-e2e.conf.js'
        # autoWatch: true
      unit:
        configFile: 'config/karma.conf.js'
        singleRun: true

    nodemon:
      server:
        dev: {}  # runs file in main property of package.json

    stylus:
      compile:
        files:
          'app/css/app.css': 'src/stylus/app.styl'  # 1:1 compile
          'app/css/bootstrap.css': 'src/stylus/bootstrap/bootstrap.styl'  # 1:1 compile
          'app/css/responsive.css': 'src/stylus/bootstrap/responsive.styl'  # 1:1 compile

    watch:
      coffee:
        files: ['src/coffee/angular/*', 'src/coffee/node/*']
        tasks: ['coffee']
        options:
          livereload: true  # default port 35729
      mycss:
        files: ['src/stylus/*', 'src/stylus/bootstrap/*']
        tasks: ['stylus']
        options:
          livereload: true  # default port 35729
      html:
        files: ['app/*.html', 'app/partials/*.html', 'app/img/*.*']
        options:
          livereload: true  # default port 35729

#     uglify:
#       options:
#         banner: '/*! <%= pkg.name %> <%= pkg.version %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
#       dist:
#         files:
#           'dist/<%= pkg.name %>.min.js': ['<%= concat.dist.dest %>']

#     qunit:
#       files: ['test/**/*.html']

#     jshint:
#       files: ['gruntfile.js', 'src/**/*.js', 'test/**/*.js']
#       options:
#         # options here to override JSHint defaults
#         globals:
#           jQuery: true
#           console: true
#           module: true
#           document: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-stylus'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-nodemon'
  grunt.loadNpmTasks 'grunt-exec'
  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-karma'
  # grunt.loadNpmTasks 'grunt-contrib-uglify'
  # grunt.loadNpmTasks 'grunt-contrib-jshint'
  # grunt.loadNpmTasks 'grunt-contrib-qunit'
  # grunt.loadNpmTasks 'grunt-contrib-concat'

  grunt.registerTask 'default', ['coffee', 'stylus', 'exec:notify', 'concurrent:server_watch']
  grunt.registerTask 'test', ['coffee', 'stylus', 'concurrent:test_server']
