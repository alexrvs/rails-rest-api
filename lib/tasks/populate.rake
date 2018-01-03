namespace :db do
  desc 'Erase and fill database'

  task :populate => :environment do
    require 'faker'

    15.times do
      Product.create do |product|
        product.name = Faker::Lorem.word
        product.price = Faker::Number.decimal(l_digits = 5, r_digits = 2)
      end
    end
  end


end