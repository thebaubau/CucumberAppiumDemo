require 'appium_lib'
require 'appium_lib/driver'
require 'cucumber/ast'
require 'rspec/expectations'

class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('../appium.txt', __FILE__)
Appium::Driver.new(caps)

Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

Before do
  $driver.start_driver
  @screen = TestBaseScreen.new(self)
end

After { $driver.driver_quit }