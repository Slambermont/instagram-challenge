require 'rails_helper'

RSpec.feature 'Create post', type: :feature do
  scenario 'Create a post' do
    visit('/')
    click_link('New post')
    fill_in "Message", with: "Hello, world!"
    click_button "Add a New Post"
    expect(page).to have_content("Hello, world!")
  end
end
