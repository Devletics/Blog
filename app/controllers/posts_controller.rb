class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new

  end

  def create ##the create new most method
    @post = Post.new(post_params)

    @post.save

    redirect_to @post
  end


  def show

    @post = Post.find(params[:id])

  end


  private
  def post_params ##telling it to allow our parameters in the form
    params.require(:post).permit(:title, :body)
  end

end
