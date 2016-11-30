# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

# 10.times do
#   User.create!(:name => Faker::Name.name, :email => Faker::Internet.email, :image => Faker::Avatar.image, :password => 'chicken')
# end

LunchItem.destroy_all

# 10.times do
#   LunchItem.create!(:name => Faker::Lorem.word, :price => Faker::Commerce.price, :image => Faker::Placeholdit.image)
# end


Location.destroy_all

l1 = Location.create({
    :name => 'Subway',
    :image =>
    "https://pbs.twimg.com/profile_images/647435449737347076/yUly8n6G.jpg"
  })

l2 = Location.create({
    :name => 'Sourdough',
    :image =>
    "https://media.timeout.com/images/103088716/630/472/image.jpg"
  })

l3 = Location.create({
    :name => 'Mr Bao',
    :image =>
    "https://easyfoodhacks.files.wordpress.com/2015/09/picmonkey-collage1.jpg"
  })

l4 = Location.create({
    :name => 'Hotel CBD',
    :image =>
    "http://www.visitsydneyaustralia.com.au/images/77-york-street.jpg"
  })
