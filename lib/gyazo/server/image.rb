require 'digest/md5'
require 'sdbm'
require 'securerandom'
require 'mini_magick'

module Gyazo
  module Server
    class Image

      attr_reader :hash

      DIRECTORY = "public/data/"
      DBM_PATH = "db/id"

      def initialize(root, id, path)
        @root = root
        @hash = SecureRandom.hex(10)
        @id = id
        save(path)
      end

      private
        def save(path)
          convert = MiniMagick::Tool::Convert.new
          convert << path
          convert.strip
          convert.interlace "JPEG"
          convert.colorspace "sRGB"
          convert.quality "85"
          convert << "#{@root}/#{DIRECTORY}/#{hash}.jpg"
          convert.call
        end
    end
  end
end
