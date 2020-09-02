class HomeController < ApplicationController

  def index
    @albums = Album.all.order(created_at: :desc).limit(4)
  end

  def feed_photo
    @photos = Photo.where(shared:true).order(created_at: :desc)
  end
end
