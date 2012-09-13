module RedisSessionRetrieve

  class Serializer

    class << self
      def deserialize data
        Marshal.load data
      end
    end

  end

end
