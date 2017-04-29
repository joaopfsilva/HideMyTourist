class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def index
    @city = City.find(params[:city_id])
    @list_city = List.where city_id: params[:city_id].to_i
    # @list_city_places = PlaceList.where list_id: @list.id
  end
end
