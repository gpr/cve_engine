# Introduction

_cve_engine_ is a Rails engine intended to manage CVEs from NIST NVD.

https://nvd.nist.gov/download.cfm


# Installation

## Gemfile

Add these lines to your application's Gemfile:

    gem 'cve_engine'

And then execute:

    $ bundle install


## Rails Installation

To use the engine in a Rails application add the engine to the Gemfile and create the migrations:

    $ rake cve_engine:install:migrations


# Test

To launch the tests suite:

    $ rake test

To launch the test suite with coverage:

    $ rake COVERAGE=1 test
    $ $BROWSER coverage/index.html


# Documentation

Yard is based on RDoc with some improvements.

See:

* [Yard](https://github.com/lsegal/yard/wiki/GettingStarted)
* [RDoc](https://github.com/rdoc/rdoc)

To generate the documentation:

    $ rake yard
    $ $BROWSER doc/index.html

To dynamically preview the doc (automatically refreshed):

    $ yard server --reload


# License

Affero GPL V3 (see LICENSE file)
