
Then(/^I should find text "(.*?)"$/) do |content|
  expect(page).to have_content(content)
end


