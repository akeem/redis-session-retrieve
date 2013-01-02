require File.expand_path('serializer', File.dirname(__FILE__))

module RedisSessionRetrieve

  class Fetcher

    class << self
      attr_accessor :connection

      def initialize
      end

      def find_by_id session_id
        session = nil

        ActiveSupport::Notifications.instrument 'redis-session-retrieve.session_lookup',:session_id => session_id do
          session  = @connection.get session_id
        end

        if session.nil?
          return nil
        else
          return Serializer.deserialize session
        end
      end

    end

  end

end
