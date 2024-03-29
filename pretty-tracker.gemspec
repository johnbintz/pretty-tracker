# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pretty-tracker/version"

Gem::Specification.new do |s|
  s.name        = "pretty-tracker"
  s.version     = Pretty::Tracker::VERSION
  s.authors     = ["John Bintz"]
  s.email       = ["john@coswellproductions.com"]
  s.homepage    = ""
  s.summary     = %q{Pretty CLI to Pivotal Tracker}
  s.description = %q{Pretty CLI to Pivotal Tracker}

  s.rubyforge_project = "pretty-tracker"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "pivotal-tracker", '~> 0.4.0'
  s.add_runtime_dependency "rainbow"
  s.add_runtime_dependency "thor"
  s.add_runtime_dependency "chronic"
end
