module.exports = (grunt)->

  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    coffee:
      # compileWithMaps:
        # options:
        #   sourceMap: true
      compile:
        files:
          'server.js': 'src/coffee/server.js'  # 1:1 compile server file
          'public/js/app.js': ['src/coffee/public/*.coffee']  # concat then compile angular js into single file

    stylus:
      compile:
        files:
          'public/css/stylus.css': 'src/stylus/app.styl'  # 1:1 compile
          'public/css/bootstrap.css': ['src/stylus/bootstrap/*.styl']  # compile and concat into single file

    watch:
      files: ['src/coffee/*', 'src/stylus/*', 'src/stylus/bootstrap/*']
      tasks: ['default']

#     uglify:
#       options:
#         banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
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
  # grunt.loadNpmTasks 'grunt-contrib-uglify'
  # grunt.loadNpmTasks 'grunt-contrib-jshint'
  # grunt.loadNpmTasks 'grunt-contrib-qunit'
  # grunt.loadNpmTasks 'grunt-contrib-concat'

  grunt.registerTask 'default', ['coffee', 'stylus']
  # grunt.registerTask 'test', ['coffee', 'stylus']
  