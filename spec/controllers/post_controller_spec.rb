require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET /' do
    it 'responds with 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /new' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'Redirects to homepage' do
      post :create, params: { post: { message: 'Hello, Instagram!' } }
      expect(response).to redirect_to(posts_url)
    end

    it 'creates a new post in the database' do
      expect{ post :create, params: { post: { message: 'Hello, Instagram!' } } }.to change{ Post.count }.by(1)
    end
  end

  describe 'GET /show' do
    it 'responds with 200' do
      post :create, params: { post: { message: 'Hello, Instagram!' } }
      get :show, params: { id: 1 }
      expect(response).to have_http_status(200)
    end
  end
end
