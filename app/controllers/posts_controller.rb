class PostsController < ApplicationController

  def index
    @posts = Post.where(published: true).order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(_post_params)

    if @post.save
      redirect_to post_path(@post), notice: "Post #{@post.title} created."
    else
      render :new
    end
  end

  private

  def _post_params
    params.require(:post).permit(
      :title,
      :body,
      :user_id,
      :published
    )
  end
end

