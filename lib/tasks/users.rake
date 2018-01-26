namespace :db do
  desc 'Erase and fill database by users info'

  task :users => :environment do
    require 'faker'

    30.times do
        user = User.new
          user.email = Faker::Internet.email
          user.name = Faker::Internet.user_name
          user.password = 'test1234'
          user.first_name = Faker::Name.first_name
          user.last_name = Faker::Name.last_name
          user.phone = Faker::PhoneNumber.phone_number
          user.address = Faker::Address.street_address
          user.city = Faker::Address.city
          user.state = Faker::Address.state
          user.zip = Faker::Address.zip
          user.confirmed_at = Time.now
        user.save(validate: false)
      end
  end
end