class HomeController < ApplicationController
  def index
  	@post = Post.all
  end
  def delete
  	post = Post.find(params[:post_id])
  	post.destroy
  	redirect_to '/home/index'
  end
  def create
  	@post = Post.new
  	@post.content = params[:content]
  	@post.name = params[:names]
  	@post.save
  	redirect_to '/home/index'
    end
end
