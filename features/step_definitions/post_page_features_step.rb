Given(/^I visit the "(.*?)" page$/) do |page_name|
  visit "/#{page_name}"
end

Given(/^I visit the homepage$/) do
  visit '/'
end

Then(/^I should be on the "(.*?)" page$/) do |page_name|
  expect(current_path).to eq("/#{page_name}")
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

Given(/^I am already signed in$/) do
  login_as the_user
end

def the_user
  user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
end

#---
When(/^I click the link "(.*?)"$/) do |link_name|
  click_link(link_name)
end

Then(/^I should see a "(.*?)" button$/) do |button_name|
  expect(page).to have_button(button_name)
end

When(/^I click "(.*?)"$/) do |clicky_name|
  click_on(clicky_name)
end






