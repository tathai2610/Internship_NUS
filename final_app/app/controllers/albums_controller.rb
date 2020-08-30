class AlbumsController < ApplicationController

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.title = album_params
    if @album.save
      flash[:success] = "Update successfully"
      render :edit
    else
      flash[:error] = @album.errors[:title]
      render :edit
    end

  end

  private
  def album_params
    params.require(:album).permit(:title)[:title]
  end

end
