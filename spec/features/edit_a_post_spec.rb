require 'rails_helper'

RSpec.feature 'Edits a post', type: :feature do
  scenario 'udpates a posts' do
    sign_up_and_sign_in
    click_link('New post')
    fill_in "Message", with: "Hello, Instagram!"
    click_button "Add a New Post"
    first('.post').click_link("Edit")
    fill_in "Message", with: "Hello again, Instagram!"
    click_button("Update Post")
    expect(current_path).to eq('/posts')
    expect(page).to have_content('Hello again, Instagram!')
  end
end
