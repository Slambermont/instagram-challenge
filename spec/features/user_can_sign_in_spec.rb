require 'rails_helper'

RSpec.feature 'User can sign in', type: :feature do
  scenario 'user sign in' do
    @user = create(:user)
    visit('/')
    click_link('Sign in')
    fill_in 'Email', with: 'user@gmail.com'
    fill_in 'Password', with: 'password'
    click_button('Log in')
    expect(page).to have_content('Signed in successfully.')
  end
end
