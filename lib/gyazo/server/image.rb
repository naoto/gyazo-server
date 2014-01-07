require 'digest/md5'
require 'sdbm'

module Gyazo
  module Server
    class Image

      attr_reader :hash

      DIRECTORY = "public/data/"
      DBM_PATH = "db/id"

      def initialize(root, id, data)
        @root = root
        @hash = digest(data)
        @id = id
        save(data)
      end

      private
        def save(data)
          File.open("#{@root}/#{DIRECTORY}/#{hash}.png", 'w'){ |f| f.write(data) }
          SDBM.open("#{@root}/#{DBM_PATH}", 0644)[@hash] = @id
        end

        def digest(data)
          Digest::MD5.hexdigest(data).to_s.to_i(16).to_s(36)
        end

    end
  end
end
