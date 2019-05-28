//The "Wrapper" Function

module.exports = function (grunt) {

    //Project and task configuration

    const sass = require('node-sass');

    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        sass: {
            options: {
                implementation: sass,
                sourceMap: true
            },
            dist: {
                files: {
                    'CSS/styles.css': 'assets/scss/styles.scss'
                }
            }
        }
    });

    grunt.registerTask('default', ['sass']);

};