# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "rails_reports"
  s.summary = "Insert RailsReports summary."
  s.description = "Insert RailsReports description."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.1"

  s.add_dependency(%q<haml>, [">= 0"])

  s.add_development_dependency('rspec-rails', '~> 2.5')
end
