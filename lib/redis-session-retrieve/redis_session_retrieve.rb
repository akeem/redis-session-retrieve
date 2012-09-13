require 'redis'

class RedisSessionRetrieve
  class << self
    attr_accessor :connection

    def find_by_id session_id
      session  = @connection.get session_id

      if session.nil?
        return nil
      else
        return Marshal.load session
      end
    end

  end
end
