# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redis-session-retrieve/version"

Gem::Specification.new do |s|
  s.name        = "redis-session-retrieve"
  s.version     = RedisSessionRetrieve::VERSION
  s.authors     = ["Akeem Adeniji"]
  s.email       = ["akeem.adeniji@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "redis-session-retrieve"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "hiredis"
  s.add_runtime_dependency "mock_redis"
end
