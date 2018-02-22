# Selenium-PhantomJS-general-layout
General basic layout for a small testing app using Selenium WebDriver and PhantomJS
Follow the instructions on my blog post to get your app up and running :) this is the base setup:

### Requirements
Bundler and PhantomJs

### Instructions
Install your gems:
```
$ gem install bundler
$ bundle
```

For Selenium to be able to use PhantomJS you need to install it on your machine:
```
$ npm install -g phantomjs
```

to execute the tests run in the root of the project:
```
$ ruby tests/FILENAME
```

### Rake tasks
To run the rakefile with all the tasks included run in the terminal from the root of the project:

```
rake -f tests/rakefile.rb
```

### Heroku deployment

The project on Heroku uses a buildpack to overcome the issue of needing PhantomJS's executable to be present in the project.
To add the buildpack to the project on heroku in case of need to recreate the project run from your command line:
```
heroku buildpacks:add https://github.com/stomita/heroku-buildpack-phantomjs -a your-project-name
```

Lucia
