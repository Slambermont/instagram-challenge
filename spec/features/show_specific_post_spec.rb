require 'rails_helper'

RSpec.feature 'Shows a specific post', type: :feature do
  scenario 'shows post with id 1' do
    sign_up_and_sign_in
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    click_link('Hello, Instagram!')
    expect(page).to have_content('Hello, Instagram!')
  end

  scenario 'links back to homepage' do
    sign_up_and_sign_in
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    click_link('Hello, Instagram!')
    click_link('Back to Homepage')
    expect(current_path).to eq('/')
  end
end
