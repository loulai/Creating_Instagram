Then(/^I should find text "(.*?)"$/) do |arg1|
  expect(page).to have_content()
end

Then(/^I should find text 'Login'$/) do
 expect(page).to have_content('Login')
end
