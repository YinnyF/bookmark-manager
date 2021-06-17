# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

# Controller
class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello World!'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    url = params[:url]
    title = params[:title]
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
