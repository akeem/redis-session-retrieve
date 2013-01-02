# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redis-session-retrieve/version"

Gem::Specification.new do |s|
  s.name        = "redis-session-retrieve"
  s.version     = RedisSessionRetrieve::VERSION
  s.authors     = ["Akeem Adeniji"]
  s.email       = ["akeem.adeniji@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Retrieve sessions stored in redis by redis-store}
  s.description = %q{An easy way to retrieve session data store in redis via the redis-store gem}

  s.rubyforge_project = "redis-session-retrieve"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "redis","~>3.0"
  s.add_dependency "activesupport","~>3.2"
  s.add_development_dependency "rspec"
  s.add_development_dependency "mock_redis"
end
