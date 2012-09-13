require "redis-session-retrieve/version"
require "redis-session-retrieve/fetcher"


module RedisSessionRetrieve
  class << self
    attr_accessor :connection

    def find_by_id session_id
      RedisSessionRetrieve::Fetcher.connection = self.connection
      RedisSessionRetrieve::Fetcher.find_by_id session_id
    end

  end

end
