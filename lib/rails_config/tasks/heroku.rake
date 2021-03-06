require 'rails_config'
require 'tasks.rb'
namespace 'rails_config' do
  task :heroku, [:app] => :environment do |_, args|
    RailsConfig::Tasks::Heroku.new(args[:app]).invoke
  end
end