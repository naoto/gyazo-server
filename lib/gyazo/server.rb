require "gyazo/server/version"

module Gyazo
  module Server
    # Your code goes here...
    require 'gyazo/server/options'
    require 'gyazo/server/webserver'
    require 'gyazo/server/image'

    require 'socket'

    def self.run(args)
      options = Options.new(args)
      options[:host] ||= Socket.getifaddrs.select{|x|
          x.name == "eth0" and x.addr.ipv4?
      }.first.addr.ip_address
      WebServer.run!(options)
    end
  end
end
