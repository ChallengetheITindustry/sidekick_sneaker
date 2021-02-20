class LikeListsController < ApplicationController
  def index
    @like_lists = LikeList.all
  end

  def show
    @like_lists = LikeList.find(params[:id])
  end

  def new
    @like_lists = LikeList.new
  end

  def create
    @like_lists = LikeList.create(like_lists_params)
    redirect_to like_lists_path
  end

  def edit
    @like_lists = LikeList.find(params[:id])
  end

  def update
    like_lists = LikeList.find(params[:id])
    like_lists.update!(like_lists_params)
    redirect_to like_lists_path
  end

  def destroy
    like_list = LikeList.find(params[:id])
    like_list.destroy
  end

  private

  def like_lists_params
    params.require(:like_list).permit(:name, :user_id, :sneaker_id)
  end
end
