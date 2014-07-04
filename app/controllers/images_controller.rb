class ImagesController < ApplicationController
  def index
    @images = if params[:tag]
                Image.with_tag params[:tag]
              else
                Image.all
              end
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = Image.new(image_params)
  	@image.save
  	redirect_to images_path
  end

  private
  def image_params
  	params.require(:image).permit(:file)
  end
end
