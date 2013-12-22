class PostController < ApplicationController
  def index
    @posts = Post.all()
  end

  def new_post
  end

  def create
    @post = Post.new(post_params)
    
    @post.save
    redirect_to post_index_path
  end
  
  private
    def post_params
      params.require(:post).permit(:title, :author, :body)
    end
end
