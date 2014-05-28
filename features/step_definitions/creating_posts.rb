#-- filling in stuff 

When(/^I fill in the "(.*?)" area with "(.*?)"$/) do |area, stuff|
  fill_in(area, :with => stuff)
end

When(/^I attach a photo$/) do
  attach_file("image", Rails.root.join("spec/images/alex_in_action.png"))
end

