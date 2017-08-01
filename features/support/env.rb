require 'appium_lib'
require 'cucumber/ast'
require 'rspec/expectations'

class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('../config/appium.txt', __FILE__)

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before { $driver.start_driver }
After { $driver.driver_quit }