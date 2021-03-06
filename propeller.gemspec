$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "propeller/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "propeller"
  s.version     = Propeller::VERSION
  s.authors     = ["Farley Knight"]
  s.email       = ["farley@farleyknight.com"]
  s.homepage    = "http://github.com/farleyknight/propeller"
  s.summary     = "Database-backed job queue system with throttling."
  s.description = "Database-backed job queue system with throttling."

  s.files      = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  # Production
  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "lumberjack"
  s.add_dependency "less-rails-bootstrap"
  s.add_dependency "jquery-rails"
  s.add_dependency "therubyracer"

  # Development
  s.add_dependency "rspec"
end
