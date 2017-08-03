# Test screen class
class TestScreen < TestBaseScreen
  attr_reader :add_contact_button, :phone_text_field

  def initialize
    @add_contact_button = 'addContactButton'
    @phone_text_field   = 'contactPhoneEditText'
  end

  def main_screen?
    element_exists('id', add_contact_button)
  end

  def screen_loaded?
    element_exists('id', phone_text_field)
  end

  def tap_add_contact
    tap_on('id', add_contact_button)
  end
end
