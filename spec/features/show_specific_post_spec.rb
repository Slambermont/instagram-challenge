require 'rails_helper'

RSpec.feature 'Shows a specific post', type: :feature do
  scenario 'shows post with id 1' do
    visit ('/')
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    click_link('Hello, Instagram!')
    expect(current_path).to eq('/posts/1')
  end
end
