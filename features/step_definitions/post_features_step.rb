When(/^I visit the posts page$/) do
  visit '/posts'
end

When(/^I am already signed in$/) do
  user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
  login_as user
end

Then(/^I should see "(.*?)"$/) do |string|
  expect(page).to have_content(string)
end

#---

Then(/^I should find button "(.*?)"$/) do |button_name|
  expect(page).to have_button(button_name)
end

#---

Then(/^I should find link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end





