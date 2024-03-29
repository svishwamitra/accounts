$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "company/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "company"
  s.version     = Company::VERSION
  s.authors     = ["Srikanth Vishwamitra", "Milind Kanchan"]
  s.email       = ["svishwamitra@gmail.com", "milindkanchan@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Company."
  s.description = "TODO: Description of Company."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.2"
  # s.add_dependency "jquery-rails"
  s.add_dependency "simple_form"
end
