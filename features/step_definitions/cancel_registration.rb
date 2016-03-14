When(/^I click "(.*?)"$/) do |arg1|
  #pending # express the regexp above with the code you wish you had
  visit('users/edit')
  find_link(arg1).click
end

Then(/^I should see goodbye message$/) do
  #pending # express the regexp above with the code you wish you had
expect(page).to have_content('Bye! Your account has been successfully cancelled. We hope to see you again soon')
end

Then(/^I shouldn't be able to log in again$/) do
  #pending # express the regexp above with the code you wish you had
  visit('users/sign_in')
  fill_in('user[email]', with: @email)
  fill_in('user[password]', with: @password)
  click_button('Sign in')
  expect(page).to have_content('Invalid email or password.')
end
