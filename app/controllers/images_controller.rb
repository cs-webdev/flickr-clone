class ImagesController < ApplicationController
  def index
    @images = if params[:tag]
                Image.with_tag params[:tag]
              else
                Image.all
              end
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
  	@image = Image.new
  end

  def create
    @image = current_user.images.build(image_params)
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  private
  def image_params
  	params.require(:image).permit(:file, :title, :description)
  end
end
