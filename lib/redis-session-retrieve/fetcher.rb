require File.expand_path('serializer', File.dirname(__FILE__))

module RedisSessionRetrieve

  class Fetcher

    class << self
      attr_accessor :connection

      def initialize
      end

      def find_by_id session_id
        session  = @connection.get session_id

        if session.nil?
          return nil
        else
          return Serializer.deserialize session
        end
      end

    end

  end

end
