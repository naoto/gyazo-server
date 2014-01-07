require 'optparse'

module Gyazo
  module Server
    class Options < Hash

      def initialize(options)
        super nil
        op = OptionParser.new
        op.on('-p','--port=VAL'){ |v| self[:port] = v }
        op.on('-b','--bind-address=VAL'){ |v| self[:bind] = v }
        op.on('-h','--host=VAL'){ |v| self[:host] =v }
        op.parse!(options)
      end

    end
  end
end
