class PhotosController < ApplicationController

  def new
    @photo = Photo.new
    @user = User.find_by(id: user_info)
  end

  def create
    @photo = Photo.new(photo_detail)

    @photo.user_id = user_info
    if @photo.save
      flash[:success] = "New photo has been successfully added."
      redirect_to action: :new
    else
      flash[:error] = @photo.errors.full_messages[0]
      redirect_to action: :new
    end
  end

  def update

  end

  private

    def user_info
      params.require(:user_id)
    end

    def photo_detail
      params.require(:photo).permit(:title, :description, :image, :shared)
    end
end
