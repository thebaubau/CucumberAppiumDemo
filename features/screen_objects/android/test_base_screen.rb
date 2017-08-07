require 'appium_lib'
require 'appium_lib/driver'
require 'minitest/assertions'
require 'minitest/autorun'

# Base class for all screen objects
class TestBaseScreen < Appium::Driver

  def initialize(*opts)
    super
  end

  def query(type, element)
    $driver.find_element(:"#{type}", element.to_s)
  end

  def tap_on(type, element)
    query(type, element).click
  end

  # TODO: Only works for IDs
  def element_exists(type, element)
    elem = query(type, element)
    elem.displayed?
  end

  def test_screen
    @test_screen ||= TestScreen.new
  end
end
