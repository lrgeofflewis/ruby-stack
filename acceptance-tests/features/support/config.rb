require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'net/http'
require 'net/https'
require 'net/ssh'
require 'json'
require 'open-uri'
require 'rspec'
require 'w3c_validators'

include Capybara::DSL
include W3CValidators

Capybara.default_selector = :xpath
Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 10
Capybara.app_host = 'http://localhost:4567' # change url

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end
### Includes the unit testing framework
require 'test/unit'
### Allows the functions (assert_equals to work)
include Test::Unit::Assertions
