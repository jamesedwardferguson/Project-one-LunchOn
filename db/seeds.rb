# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

10.times do
  User.create!(:name => Faker::Name.name, :email => Faker::Internet.email, :image => Faker::Avatar.image, :password => 'chicken')
end

LunchItem.destroy_all

10.times do
  LunchItem.create!(:name => Faker::Lorem.word, :price => Faker::Commerce.price, :image => Faker::Placeholdit.image)
end

LunchType.destroy_all

t1 = LunchType.create({
    :name => 'Cafe',
    :image =>
    "https://cdn0.iconfinder.com/data/icons/buildings-8/512/food_restaurant_menu_shop_coffee_hot_label-512.png"
    })

t2 = LunchType.create({
    :name => 'Food Court',
    :image =>
    "https://d30y9cdsu7xlg0.cloudfront.net/png/75696-200.png"
    })

t3 = LunchType.create({
    :name => 'Pub',
    :image =>
    "https://d30y9cdsu7xlg0.cloudfront.net/png/10943-200.png"
  })

t4 = LunchType.create({
    :name => 'Casual Dining',
    :image =>
    "https://cdn0.iconfinder.com/data/icons/transit-2/32/transit-35-512.png"
  })

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
