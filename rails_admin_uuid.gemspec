$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_uuid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_uuid"
  s.version     = RailsAdminUuid::VERSION
  s.authors     = ["Seyed Razavi"]
  s.email       = ["seyed@educationapps.co.uk"]
  s.homepage    = "https://github.com/seyedrazavi/rails_admin_uuid"
  s.summary     = "UUID support for RailsAdmin"
  s.description = "UUID support for RailsAdmin"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.6"
end
