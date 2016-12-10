require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.app_host= 'https://qa.acorns.com'
Capybara.run_server = false
 
Capybara.default_driver = :selenium