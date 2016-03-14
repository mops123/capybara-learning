Then(/^I should see sign up error message$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page).to have_content('Please review the problems below')
end
Then(/^I should see sign up message$/) do
  #pending # express the regexp above with the code you wish you had
  expect(page).to have_content('Welcome! You have signed up successfully')
end
