Given(/^is on the main screen$/) do
  @screen.test_screen.main_screen?
end

When(/^he taps the Add Contact button$/) do
  @screen.test_screen.tap_add_contact
end

Then(/^he should see the Add Contact screen$/) do
  @screen.test_screen.screen_loaded?
end