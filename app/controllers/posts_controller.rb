class PostsController < ApplicationController
  def index
    #コメントは表示させない
    # 編集時に順番が入れ替わらないようにPost.allは使用しない
    @post = Post.order(id: :asc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update!
    redirect_to posts_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
