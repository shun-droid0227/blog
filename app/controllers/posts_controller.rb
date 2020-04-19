class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to posts_path
    else
      render new
    end
  end

  def index
    @post = Post.all
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:title,:sentence)
  end

end
