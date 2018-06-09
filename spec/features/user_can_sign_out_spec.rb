require 'rails_helper'

RSpec.feature 'User can sign out', type: :feature do
  scenario 'user sign out' do
    @user = create(:user)
    visit('/')
    click_link('Sign in')
    fill_in 'Email', with: 'user@gmail.com'
    fill_in 'Password', with: 'password'
    click_button('Log in')
    click_link('Sign out')
    expect(page).to have_content('Signed out successfully.')
  end
end
