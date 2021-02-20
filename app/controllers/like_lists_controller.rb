class LikeListsController < ApplicationController
  def index
    @like_lists = LikeList.find(params[:id])
  end

  def show
    @like_lists = LikeList.find(params[:id])
  end

  def new
  end

  def create
    @like_lists = LikeList.new(like_lists_params)
    if @like_lists.save
      redirect_to like_lists_path
    else
    end
  end

  def edit
  end

  def update
    like_list = LikeList.find(params[:id])
    like_list.update
    redirect_to like_lists_path
  end

  def destroy
    like_list = LikeList.find(params[:id])
    like_list.destroy
    redirect_to like_lists_path
  end

  private

  def like_lists_params
    params.require(:like_list).permit(:list_name, :user_id, :sneaker_id)
  end
end
