require 'mock_redis'
require File.expand_path("redis-session-retrieve", File.dirname(__FILE__) + "/../lib/")

describe RedisSessionRetrieve::Fetcher do

  let(:bootstrap_redis){
    mr = MockRedis.new
    mr.set("12345", Marshal.dump({:user_id => "the_one_handed_man"}))
    RedisSessionRetrieve::Fetcher.connection = mr
  }

  let(:existing_session){RedisSessionRetrieve::Fetcher.find_by_id('12345')}
  let(:missing_session){RedisSessionRetrieve::Fetcher.find_by_id('3333')}

  before(:all) do
    bootstrap_redis
  end

  describe ".find_by_id" do
    context "when a matching session exists in the store" do

      it "should not be empty" do
        existing_session.should_not be_empty
      end

      it "should return the session data" do
        existing_session.should_not be_nil
      end
    end

    context "when a matching session does not exist in the store" do
      it "should return nil" do
        missing_session.should be_nil
      end
    end

  end

end
