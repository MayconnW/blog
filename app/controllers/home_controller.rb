class HomeController < ApplicationController
  
  def index
    #@posts = Post.order(created_at: :desc).page(params[:page]).per(4)
    @posts = Post.order(:id).page(params[:page]).per(6)
    #@posts = Post.new();
  end
  
end
