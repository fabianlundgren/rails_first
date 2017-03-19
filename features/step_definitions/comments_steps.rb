Given(/^the following article exists on our site$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end

Then(/^I shouldn't see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button
end

Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end
