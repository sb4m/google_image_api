# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "google_image_api/version"

Gem::Specification.new do |s|
  s.name        = "google_image_api"
  s.version     = GoogleImageApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["sb4m"]
  s.email       = ["sb4m.01@gmail.com"]
  s.homepage    = "https://github.com/sb4m/google_image_api"
  s.summary     = %q{Access to google image api}
  s.description = %q{simplify access to google image api}

  s.rubyforge_project = "google_image_api"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
