class ArtworksController < ApplicationController
  def index 
    artworks = Artwork.all
    render json: artworks
  end

  def create
    artwork = Artwork.new(artwork_params)
    # replace the `artwork_attributes_here` with the actual attribute keys
    if artwork.save
      render json: artwork
    else 
      render json: artwork.errors.full_messages, status: 418
    end
  end
  
  def show
    artwork = Artwork.find(params[:id])
    render json: artwork 
  end

  def update 
    # Haven't gone over it in lecture yet
  end

  def destroy 
    artwork = Artwork.find(params[:id])
    artwork.destroy 
    render json: artwork 
  end

  private 
  def artwork_params 
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end
