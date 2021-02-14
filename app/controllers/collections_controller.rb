class CollectionsController < ApplicationController
  def index
    @collection = Collection.find(params[:id])
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def create
    @collection = Collection.creaate(collection_params)
  end

  def update
    collection = Collection.find(params[:id])
    collection.update
    redirect_to collection_index_path
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.destroy
    redirect_to collection_index_path
  end

  private

  def collection_params
    params.require(:collection).permit(:image, :name, :explanation)
  end
end
