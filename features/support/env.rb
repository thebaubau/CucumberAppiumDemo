require 'appium_lib'
require 'appium_lib_core'
require 'cucumber'

class AppiumWorld
end

caps = Appium.load_appium_txt file: File.expand_path('../screen_objects/android/config/appium.txt', __dir__)

World do
  AppiumWorld.new
end

Before do
  @screen ||= BaseScreen.new(caps)
  @screen.start_driver
  Appium.promote_appium_methods AppiumWorld
end

After do
  @screen.driver_quit
end
