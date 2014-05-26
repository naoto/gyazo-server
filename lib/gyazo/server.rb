require "gyazo/server/version"

module Gyazo
  module Server
    # Your code goes here...
    require 'gyazo/server/options'
    require 'gyazo/server/webserver'
    require 'gyazo/server/image'
    require 'gyazo/server/movie'

    require 'socket'

    def self.run(args)
      options = Options.new(args)
      options[:port] ||= "4567"
      options[:host] ||= [Socket.getifaddrs.select{|x|
                            x.name == "eth0" and x.addr.ipv4?
                          }.first.addr.ip_address,
                          ":",
                          options[:port]].join
      WebServer.run!(options)
    end

  end
end
