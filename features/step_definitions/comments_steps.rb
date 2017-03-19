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

When(/^I fill in email with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in comment with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
