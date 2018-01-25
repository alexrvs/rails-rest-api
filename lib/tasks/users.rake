namespace :db do
  desc 'Erase and fill database by users info'

  task :users => :environment do
    require 'faker'

  end
end