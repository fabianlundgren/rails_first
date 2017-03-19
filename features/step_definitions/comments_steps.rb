Then(/^I shouldn't see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in email with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fill in comment with "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
