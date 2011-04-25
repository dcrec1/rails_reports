require 'haml'

module RailsReports
  class Engine < Rails::Engine
    config.before_initialize do
      Haml.init_rails(binding)
      Haml::Template.options[:format] = :html5
    end
  end
end
