require 'rails_helper'


RSpec.describe PostsController, type: :controller do
  # before do 
  # user = new(:user)
  #   allow_any_instance_of(ApplicationController).to receive(:current_user).and_return{user}
  # end 

  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /" do
    it "responds with 200" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")).to be
    end
  end
end
