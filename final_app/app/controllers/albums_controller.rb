class AlbumsController < ApplicationController

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.title = album_params
    if @album.save
      flash[:success] = "Update successfully"
      redirect_to action: :edit
    else
      flash[:error] = @album.errors.full_messages[0]
      redirect_to action: :edit
    end

  end

  private
  def album_params
    params.require(:album).permit(:title)[:title]
  end

end
