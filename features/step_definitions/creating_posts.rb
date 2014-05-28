When(/^I fill in the "(.*?)" area with "(.*?)"$/) do |area, stuff|
  fill_in(area, :with => stuff)
end
