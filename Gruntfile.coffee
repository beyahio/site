module.exports = (grunt) ->
  grunt.initConfig(
    pkg: grunt.file.readJSON('package.json')
    concat:
      options:
        separator: ';'
      dist:
        src: [
          'src/**/*.js'
        ]
        dest: 'dist/<%= pkg.name %>.js'
    uglify:
      options:
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      dist:
        files: 'dist/<%= pkg.name %>.min.js': ['<%= concat.dist.dest %>']
    jshint:
      files: ['Gruntfile.js', 'src/**/*.js', 'test/**/*.js'],
      options:
        globals:
          jQuery: true
          console: true
          module: true
          document: true
    jsdoc:
      dist:
        src: [
          'README.md',
          'src/**/*.js',
          'test/**/*.js'
        ]
        options:
          destination: 'doc',
          configure: './conf/jsdoc.conf',
          template: './node_modules/ink-docstrap/template',
          tutorials: './content/'
    clean: ['doc', 'dist']
  )

  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-qunit');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-clean');

  grunt.loadNpmTasks('grunt-jsdoc');

  grunt.registerTask('test', ['jshint']);

  grunt.registerTask('default', ['jshint', 'clean', 'jsdoc', 'concat', 'uglify']);
