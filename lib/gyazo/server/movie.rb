module Gyazo::Server
  class Movie

    attr_reader :hash

    def initialize(root, id, data)
      @root = root
      @id = id
      @hash = digest(data)

      save(data)
    end

    private
      def save(data)
        File.open("/tmp/#{@hash}.mp4", "w"){|f| f.write(data)}
        system("sh ./script/convert_mp4togif.sh #{@hash}")
      end

      def digest(data)
        Digest::MD5.hexdigest(data).to_s.to_i(16).to_s(36)
      end


  end
end
