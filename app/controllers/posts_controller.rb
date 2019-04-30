class PostsController < ApplicationController
	before_action :set_post, only: %i[show edit update]
	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit
	end

	def update
	  @post.update(title: params[:post][:title], description: params[:post][:description])

	  redirect_to post_path(@post)
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end
end
