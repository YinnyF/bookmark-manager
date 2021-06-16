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

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
