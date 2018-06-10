require 'rails_helper'

RSpec.feature 'Create comment', type: :feature do
  scenario 'Add a comment to a post' do
    sign_up_and_sign_in
    create_post
    add_comment
    expect(page).to have_content('Hey, Salpal!')
  end

  scenario 'Shows amount of comments on post' do
    sign_up_and_sign_in
    create_post
    add_comment
    expect(page).to have_content('1')
  end

  scenario 'Shows unsername on post' do
    sign_up_and_sign_in
    create_post
    add_comment
    expect(page).to have_content('Salpal')
  end
end
