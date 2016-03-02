# Processo seletivo RD - Thiago Marques Pereira

The functional tests consist in some scenarios of RDS plataform. The tests were made with cucumber and capybara with concept of Page Objects.

# Setup

- This test needed ruby 2.2.0 >;
- Needed gem bundler instaled (default):

```ruby
gem install bundler
```
- Needed Qt package instaled for compiling capybara-webkit: https://goo.gl/vdjW7;
- Execute bundle install on path processo_seletivo_RD:

```ruby
bundle install
```
This command will install all the gems needed to run the tests that are in Gemfile file.

# Execute the tests

- On path processo_seletivo_RD, execute this command for the start all tests: cucumber
- For execute specific feature, execute this command on path cucumber: cucumber --require features features/specifications/xxx.feature

# Screenshot on failed

There is a folder called screenshots /processo_seletivo _RD/features/screenshot_on_failed that stores screenshots of any errors.
