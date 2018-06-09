require 'rails_helper'

RSpec.feature 'Edits a post', type: :feature do
  scenario 'udpates a posts' do
    visit('/')
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    first('.post').click_link("Delete")
    expect(current_path).to eq('/posts')
    expect(page).not_to have_content('Hello, Instagram!')
  end
end
