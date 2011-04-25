require 'haml'

module RailsReports
  class Engine < Rails::Engine
    config.before_initialize do
      Haml.init_rails(binding)
      Haml::Template.options[:format] = :html5
    end
  end
end

Method.send :define_method, :arguments do
  File.open(File.join(Rails.application.paths.app.models.first, "#{receiver.class.to_s.underscore}.rb")).read.detect { |line| line =~ /def #{name}(.*)$/ }
  $1.tr('()','').split(',').map{|p| p.gsub(/=.*/, '')}.reject(&:blank?).map(&:strip)
end
