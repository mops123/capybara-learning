require 'rails_helper'

RSpec.feature "Cancel Registration", type: :feature do
  let!(:user) { User.create(email: email, password: password, password_confirmation: password) }
  let(:email) { 'jill@example.com' }
  let(:password) { 'password' }

  before do
    # Sign in

    # Cancel registration
    # NOTE: Poltergeist ignore js alert/confirm dialogs
  end

  it "displays a goodbye message"

  # Try to sign in again
  it "does not allow the user to sign in again"
end
