require 'sinatra'

module Gyazo
  module Server
    class WebServer < Sinatra::Base

      set :root, "#{File.dirname(__FILE__)}/../../../"

      post '/' do
        id = request[:id]
        if !request[:imagedata].nil?
          image = Image.new(settings.root, id, request[:imagedata][:tempfile].path)
          return "http://#{settings.host}/data/#{image.hash}.jpg"
        elsif !request[:data].nil?
          data = request[:data][:tempfile].read
          movie = Movie.new(settings.root, id, data)
          return "http://#{settings.host}/data/#{movie.hash}.gif"
        else
          return "http://#{settings.host}/"
        end
      end

      get '/' do
        send_file File.join(settings.public_folder, 'index.html')
      end

    end
  end
end
