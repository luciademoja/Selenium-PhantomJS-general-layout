require 'phantomjs'
require 'selenium-webdriver'
require 'time'
require 'dotenv'
Dotenv.load

def setup
  @driver = Selenium::WebDriver.for :phantomjs
  @driver.manage.window.resize_to(1300, 500)
end

def teardown
  @driver.quit
end

def run
  setup
  yield
  teardown
end
