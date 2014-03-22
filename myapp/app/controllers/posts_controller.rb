class PostsController < ApplicationController

	def index
		@post = Post.find(params[:user_id])

	end

	def posts
		@posts = Post.all

	end

end