class ImagesController < ApplicationController
	def index
		@images = if params[:tag]
								Image.with_tag params[:tag]
							else
								Image.all
							end
	end
end