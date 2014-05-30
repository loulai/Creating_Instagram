#-- filling in stuff 

When(/^I fill in the "(.*?)" area with "(.*?)"$/) do |area, stuff|
  fill_in(area, :with => stuff)
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


