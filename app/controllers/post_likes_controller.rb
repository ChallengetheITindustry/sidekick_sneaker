class PostLikesController < ApplicationController
  def create
    current_user.post_likes.create!(post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.post_likes.find_by(post_id: params[:post_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
