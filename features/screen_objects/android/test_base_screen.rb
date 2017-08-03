require 'appium_lib'
require 'appium_lib/driver'
require 'minitest/assertions'
require 'minitest/autorun'

# Base class for all screen objects
class TestBaseScreen
  attr_reader :screen

  def initialize(screen)
    @screen = screen
  end

  def method_missing(sym, *args, &block)
    if screen.respond_to_missing?
      screen.send sym, *args, &block
    else
      super
    end
  end

  def respond_to_missing?
    true
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
