When(/^I visit the posts page$/) do
  visit '/posts'
end

When(/^I am already signed in$/) do
  @user = User.create(email: 'alex@a.com', password: '12345678', password_confirmation: '12345678')
  login_as @user
end

Then(/^I should see "(.*?)"$/) do |string|
  expect(page).to have_content(string)
end

#---

Given(/^I haven't posted a photo before$/) do
  @user.posts.count == 0
end

Given(/^I am not following anyone$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I post a photo$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the photo on the home page$/) do
  pending # express the regexp above with the code you wish you had
end





