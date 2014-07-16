#-- filling in stuff 

When(/^I fill in the "(.*?)" area with "(.*?)"$/) do |area, stuff|
  fill_in(area, :with => stuff, match: :first)
end

#-- photo stuff

When(/^I attach a photo$/) do
  attach_file("Picture", Rails.root.join("spec/images/alex_in_action.png"))
end

Then(/^I should see my photo$/) do
  expect(page).to have_css("img.uploaded-picture")
end

Then(/^I should see two photos$/) do
  expect(page).to have_css("img.uploaded-picture", count: 2)
end

When(/^I wait (\d+) second$/) do |arg1|
	sleep 2
end

Given(/^I upload two photos successfully$/) do
	# .. with no caption or hashtags
	visit "posts/new"
  attach_file("Picture", Rails.root.join("spec/images/fluffy_puppies.png"))
  click_button "Create Post"
  visit "posts/new"
  attach_file("Picture", Rails.root.join("spec/images/chipmunks.png"))
  click_button "Create Post"
end