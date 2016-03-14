Given(/^There exists following users$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |row|
    User.create(
      email: row["Name"],
      password: row["Password"],
      password_confirmation: row["Password"])
  end
  #pending # express the regexp above with the code you wish you had
end

Given(/^I go to main page$/) do
  #pending # express the regexp above with the code you wish you had
  visit root_path
end

Given(/^I click in navbar "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  within('.navbar'){click_link(arg1)}
end

When(/^I fill "(.*?)" field with "(.*?)"$/) do |field, value|
  #pending # express the regexp above with the code you wish you had
  fill_in field, with: value
end

When(/^I click button "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  click_button arg1
end

Then(/^I should see navigation links for guest user$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page).to have_content('Sign in')
  expect(page).to have_content('Sign up')
  expect(page).not_to have_content('Profile')
  expect(page).not_to have_content('Sign out')
end

Then(/^I should see sign in error message$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page).to have_content('Invalid email or password')
end

Then(/^I should see navigation links for signed in user$/) do
  #pending # express the regexp above with the code you wish you had
  # binding.pry
  # visit('users/sign_up')
  # fill_in('Email', with: 'jill@example.com')
  # fill_in('user[password]', with: 'password')
  # fill_in('user[password_confirmation]', with: 'password')
  # # binding.pry
  # click_button('Sign up')
  # binding.pry
  expect(page).not_to have_content('Sign in')
  expect(page).not_to have_content('Sign up')
  expect(page).to have_content('Profile')
  expect(page).to have_content('Sign out')
end

Then(/^I should see welcome message$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page).to have_content("Signed in successfully.")
end
