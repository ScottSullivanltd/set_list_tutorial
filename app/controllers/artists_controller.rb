class ArtistController < ApplicationController
  def index
    @artiasts = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create(artist_params)
    # redirect_to "/artists/#{artist.id}"  #for show page
    redirect_to "/artists"  #for show page
  end

  def artist_params
    params.permit(:name)
  end
end
