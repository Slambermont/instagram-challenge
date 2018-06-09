require 'rails_helper'

RSpec.feature 'Create post', type: :feature do
  scenario 'Create a post' do
    visit('/')
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    expect(current_path).to eq('/posts')
    expect(page).to have_content("Hello, Instagram!")
  end
end
