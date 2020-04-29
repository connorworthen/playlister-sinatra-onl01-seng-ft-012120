# frozen_string_literal: true

<<<<<<< HEAD
class ArtistsController < ApplicationController
  get '/artists/?' do
    erb :'/artists/index.html'
  end

  get '/artists/:slug/?' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :'/artists/show.html'
=======
  get '/artists' do
    @artists = Artist.all
    erb :'/artists/index'
  end

   get '/artists/:slug' do
    @artist = Artist.find {|artist| artist.slug == params[:slug]}
    #@songs = @artists.songs
    #@genres = @artists.genres
    erb :'/artists/show'
>>>>>>> 9c917b1e10e3377b89567ff7e2a66aba83a15a49
  end
end
