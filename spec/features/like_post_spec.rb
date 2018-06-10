require 'rails_helper'

RSpec.feature 'Like a post', type: :feature do
  scenario 'Like a post' do
    sign_up_and_sign_in
    create_post
    like
    expect(page).to have_content('Salpal liked it.')
  end

  scenario 'Shows who liked the post' do
    sign_up_and_sign_in
    create_post
    like
    expect(page).to have_content('1 Likes')
  end
end
