module.exports = (grunt)->
  LESS_SRC_DIR = "less"
  CSS_TARGET_DIR = "css"
  SVG_SRC_DIR = "img"
  SVG_TARGET_DIR = "img"

  grunt.initConfig
    less:
      app_css:
        src: "#{LESS_SRC_DIR}/tv-network-icon.less"
        dest: "#{CSS_TARGET_DIR}/tv-network-icon.css"

    cssmin:
      app_css:
        src: "#{CSS_TARGET_DIR}/tv-network-icon.css"
        dest: "#{CSS_TARGET_DIR}/tv-network-icon.min.css"

    replace:
      app_css:
        src: ["#{CSS_TARGET_DIR}/*.css"]
        overwrite: true
        replacements: [{
          from: /5 _/g
          to: "5_"
        }]

    svgmin:
      app_svg:
        files: [{
          expand: true,
          cwd: "#{SVG_SRC_DIR}",
          src: ["*.svg"],
          dest: "#{SVG_SRC_DIR}/",
          ext: '.svg'
        }]

    watch:
      css:
        options:
          livereload: true
        files: "#{LESS_SRC_DIR}/*.less"
        tasks: ["build"]

      assets:
        options:
          livereload: true
        files: ['index.html', 'assets/*']

    connect:
      server:
        options:
          port: 8000
          keepalive: true


    grunt.loadNpmTasks("grunt-contrib-less")
    grunt.loadNpmTasks("grunt-contrib-cssmin")
    grunt.loadNpmTasks("grunt-text-replace")
    grunt.loadNpmTasks("grunt-svgmin")
    grunt.loadNpmTasks("grunt-contrib-watch")
    grunt.loadNpmTasks('grunt-contrib-connect')

    grunt.registerTask("default", ["build", "watch"])
    grunt.registerTask("build", ["less", "cssmin", "replace", "svgmin"])
