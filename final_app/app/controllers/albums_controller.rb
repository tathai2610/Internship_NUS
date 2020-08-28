class AlbumsController < ApplicationController

  def edit
    @album = Album.find(params[:id])

  end

  def update
    @album = Album.find(params[:id])
    @album.update(title: album_params)
  end

  private
  def album_params
    params.require(:album).permit(:title)[:title]
  end

end
