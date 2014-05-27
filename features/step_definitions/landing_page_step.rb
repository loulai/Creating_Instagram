Given(/^I visit the homepage$/) do
  visit '/'
end

Then(/^I should find text "(.*?)"$/) do |arg1|
  expect(page).to have_content()
end

