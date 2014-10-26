module.exports = function (grunt) {

// -- Config -------------------------------------------------------------------

grunt.initConfig({
  compass: {
    dist: {
      options: {
        config: 'config.rb'
      }
    }
  },
  concat: {
    options: {
      separator: ';',
    },
    dist: {
      src: [
        'js/src/libs/jquery-1.11.0.min.js',
        'js/src/libs/modernizr.min.js',
        'js/src/libs/gumby.min.js',
        'js/src/express.src.js',
        'js/src/general.src.js'
      ],
      dest: 'js/script.js',
    },
  },
  jshint: {
    options: {
      browser: true,
      globals: {
        jQuery: true
      },
    },
    src: [
        'js/src/**/*.src.js'
        ],
  },
  uglify: {
    options: {
        sourceMap: true
    },
    build: {
        files: {
            'js/script.min.js': ['js/script.js']
        }
    }
  },
  watch: {
    js: {
        files: ['js/**/*.js'],
        tasks: ['jshint', 'concat', 'uglify']
    },
    scss: {
        files: ['sass/**/*.scss'],
        tasks: ['compass']
    }
  }
});

// Load tasks
grunt.loadNpmTasks('grunt-contrib-compass');
grunt.loadNpmTasks('grunt-contrib-concat');
grunt.loadNpmTasks('grunt-contrib-uglify');
grunt.loadNpmTasks('grunt-contrib-watch');
grunt.loadNpmTasks('grunt-contrib-jshint');


grunt.registerTask('default', []);

};
