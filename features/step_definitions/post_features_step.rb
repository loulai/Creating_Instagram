When(/^I visit the posts page$/) do
  visit '/'
end


When(/^I am already signed in$/) do
  user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
  login_as user
end

Then(/^I should see "(.*?)"$/) do |string|
  expect(page).to have_content(string)
end



