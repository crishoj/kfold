$:.push File.expand_path("../lib", __FILE__)
require "kfold/version"

Gem::Specification.new do |s|
  s.name        = "kfold"
  s.version     = Kfold::VERSION
  s.authors     = ["Christian Rishoj"]
  s.email       = ["christian@rishoj.net"]
  s.homepage    = "http://github.com/crishoj/kfold"
  s.summary     = %q{Split your data and process it in parallel}
  s.description = %q{Create K-fold splits from data files and assist in training and testing (useful for cross-validation in supervised machine learning)}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_runtime_dependency "commander"
end
