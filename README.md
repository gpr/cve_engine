# EngineTemplate

Template for quickly creating new Rails engine.


## Installation

### Gemfile

Add these lines to your application's Gemfile:

    gem 'engine_template'

And then execute:

    $ bundle install

### Gemspec

Add this line to your gemspec file:

    spec.add_runtime_dependency 'engine_template'

And then execute:

    $ bundle install


## Rails Installation

To use the engine in a Rails application add the engine to the Gemfile and create the migrations:

    $ rake engine_template:install:migrations


## Test

To launch the tests suite:

    $ rake test

To launch the test suite with coverage:

    $ rake COVERAGE=1 test
    $ $BROWSER coverage/index.html


## Documentation

Yard is based on RDoc with some improvements.

See:

* [Yard](https://github.com/lsegal/yard/wiki/GettingStarted)
* [RDoc](https://github.com/rdoc/rdoc)

To generate the documentation:

    $ rake yard
    $ $BROWSER doc/index.html

To dynamically preview the doc (automatically refreshed):

    $ yard server --reload


## Template Usage

To create a new engine from the template:

1. Fork it
2. Clone the new repository
3. Run the script with the new gem name `cd <new_name>; ./bin/create_gem <new_name>`
4. Edit the README
5. Commit the change `git commit -a -m "<new_name> gem created"`
6. Push and set the upstream `git push --set-upstream origin master`

