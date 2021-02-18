class CollectionsController < ApplicationController
    before_action :collection_params, only: [:create, :update]
  def index
    @collection = Collection.all
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create(collection_params)
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
    params.permit(:image, :name, :explanation)
  end
end
