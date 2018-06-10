def sign_up_and_sign_in
  visit('/')
  click_link('Sign up')
  fill_in 'Name', with: 'Salomé'
  fill_in 'Username', with: 'Salpal'
  fill_in 'Email', with: 'user@gmail.com'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password'
  click_button('Sign up')
end

def sign_out
  visit('/')
  click_link('Sign out')
end

def create_post
  click_link('New post')
  fill_in 'Message', with: 'Hello, Instagram!'
  click_button('Add a New Post')
end

def add_comment
  click_link('Hello, Instagram!')
  fill_in 'Body', with: 'Hey, Salpal!'
  click_button('Create Comment')
end
