class CollectionsController < ApplicationController
    
  def index
    @collection = Collection.all
  end

  def new
    @collections = Collection.new
  end

  def create
    @collection = current_user.collections.create!(collection_params)
    @collection.user_id = current_user.id
    redirect_to collections_path
  end

  def update
    collection = Collection.find(params[:id])
    collection.update(collection_params)
    redirect_to collections_path
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.destroy
    redirect_to collections_path
  end

  private

  def collection_params
    params.require(:collection).permit(:image, :name, :explanation, :user)
  end
end