require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:post) { create(:post) }

  context 'visit post-index' do
    before do
      get :index
    end

    it "responds successfully" do
      expect(response).to be_successful
      expect(response).to have_http_status "200"
    end

    it "render index page" do
      expect(response).to render_template :index
    end
  end

  context 'visit post-show' do
    before do
      get :show, params: { id: post.id }
    end

    it "responds successfully" do
      expect(response).to be_successful
      expect(response).to have_http_status "200"
    end

    it "render show page" do
      expect(response).to render_template :show
    end

    it "assigns @post" do
      expect(assigns(:post)).to eq post
    end  
  end
end