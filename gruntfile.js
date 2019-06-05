//The "Wrapper" Function

module.exports = function (grunt) {

    //Project and task configuration

    const sass= require('node-sass')
    
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        /**
         * Grunt Sass
         * Compile Sass to CSS using node-sass
         * https://www.npmjs.com/package/grunt-sass
         */

        sass: {
            options: {
                implementation: sass,
                sourceMap: false
            },
            dist: {
                files: {
                    'CSS/styles.css': 'assets/scss/styles.scss'
                }
            }
        },
        /**
         * Grunt Contrib Watch
         * Monitor files and excute tasks
         * https://www.npmjs.com/package/grunt-contrib-watch
         */

        watch: {
            sass: {
                files: [
                    'assets/scss/*.scss'
                ],
                tasks: [
                    'sass'
                ]
            },
            scripts: {
                files: [
                    'assets/js/*.js'
                ],
                tasks: [
                    'uglify'
                ]
            }
        },
        
        uglify: {
            my_target:{
                files:{
                    'JS/scripts.js' : ['assets/js/scripts.js', 'node_modules/jquery/dist/jquery.js']
                }
            }
        }

    });

    require('load-grunt-tasks')(grunt);

    grunt.registerTask('default', ['watch']);

};
