#--- stuff with likes/liking stuff
Given(/^I have liked a photo$/) do
  first(:link, "❤ 0").click
end

