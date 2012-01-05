#require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')
require 'capybara/cucumber'
require 'sauce'
require 'sauce/capybara'

Capybara.run_server = false #Whether start server when testing
Capybara.default_selector = :css #default selector , you can change to :css
Capybara.default_wait_time = 2 #When we testing AJAX, we can set a default wait time
Capybara.ignore_hidden_elements = false #Ignore hidden elements when testing, make helpful when you hide or show elements using javascript
Capybara.javascript_driver = :culerity #default driver when you using @javascript tag

Sauce.config do |config|
  config.username = "username-here"
  config.access_key = "access-key-here"
  config.browser = "firefox"
  config.os = "Windows 2003"
  config.browser_version = "3.6."
end

Capybara.default_driver = :sauce