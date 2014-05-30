#--- visiting pages

Then(/^I visit the "(.*?)" page$/) do |page_name|
  visit "/#{page_name}"
end

Given(/^I visit the homepage$/) do
  visit '/'
end

#--- querying path

Then(/^I should be on the "(.*?)" page$/) do |page_name|
  expect(current_path).to eq("/#{page_name}")
end

Given(/^I am on the "(.*?)" page$/) do |page_name|
  expect(current_path).to eq("/#{page_name}")
end

#--- finding stuff (not photo stuff)

Then(/^I should see "(.*?)"$/) do |string|
  expect(page).to have_content(string)
end

Then(/^I should find button "(.*?)"$/) do |button_name|
  expect(page).to have_button(button_name)
end

Then(/^I should find link "(.*?)"$/) do |link_name|
  expect(page).to have_link(link_name)
end

#--- stuff that shouldn't be there

Then(/^I should not find "(.*?)"$/) do |thing|
  expect(page).not_to have_content(thing)
end

#--- clicking stuff
When(/^I click the link "(.*?)"$/) do |link_name|
  first(:link, link_name).click
end

When(/^I click "(.*?)"$/) do |clicky_name|
  click_on(clicky_name)
end


#--- the user and logging in 

Given(/^I am already signed in$/) do
  login_as the_user
end

def the_user
  user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
end

When(/^I sign in with the sign in form$/) do
  the_user
  visit '/users/sign_in'
  fill_in 'Email', with: 'alex@a.com'
  fill_in 'Password', with: '12345678'
  click_button 'Sign in'
end






