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

  describe 'GET /edit' do
    it 'responds with 200' do
      post :create, params: { post: { message: 'Hello, Instagram!' } }
      get :edit, params: { id: 1 }
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    # COME BACK TO THIS

    # it 'Redirects to homepage' do
    #   @post = create(:post)
    #   get :edit, params: { id: @post.id }
    #   patch :update, params: { post: { message: @post.message } }
    #   expect(response).to redirect_to(posts_url)
    # end
    #
    # it 'creates a new post in the database' do
    #   post :create, params: { post: { message: 'Hello, Instagram!' } }
    #   get :edit, params: { id: 1 }
    #   expect{ put :update, params: { message: 'Hello again, Instagram!' } }.to change{ @post.message }
    # end
  end

  describe "DELETE /" do
    it "deletes a post" do
      @post = create(:post)
      expect{ delete :destroy, params: { id: @post.id } }.to change{ Post.count }.by(-1)
    end
  end
end
