require File.expand_path("serializer", File.dirname(__FILE__) + "/../lib/redis-session-retrieve/")

describe RedisSessionRetrieve::Serializer do

  describe ".deserialize" do
    it "should deserialize the data passed" do
      RedisSessionRetrieve::Serializer.deserialize("\x04\b{\x06:\tnameI\"\x0FOj Simpson\x06:\x06ET").should eql({:name => "Oj Simpson"})
    end
  end

end

