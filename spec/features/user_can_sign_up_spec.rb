require 'rails_helper'

RSpec.feature 'User can sign up', type: :feature do
  scenario 'User sign up' do
    visit('/')
    click_link('Sign up')
    fill_in 'Email', with: 'user@gmail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button('Sign up')
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end
