class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(form_params)
    @photo.save
    redirect_to root_path
  end

  def form_params
    params.require(:photo).permit(:image)
  end

end
