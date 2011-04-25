require 'bundler'
Bundler::GemHelper.install_tasks

Dir['lib/tasks/*.rake'].each { |rake| load rake }

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :default => :spec

namespace :doc do
  require 'yard'
  YARD::Rake::YardocTask.new do |task|
    task.files = ['LICENSE.mkd', 'lib/**/*.rb']
    task.options = [
      '--protected',
      '--output-dir', 'doc/yard',
      '--markup', 'markdown',
    ]
  end
end
