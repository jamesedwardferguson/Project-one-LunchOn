User.destroy_all
u1 = User.create name: "Jack Wolfenpelt", email: "wolf@ga.co", image: "dtllw5gexkiznfu2cvwy", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil
u2 = User.create name: "Steve", email: "hotsteve@lover.co", image: "nsff1oq4azimwhrw3kqw", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil
u3 = User.create name: "Kim", email: "kim@kindsoul.die", image: "notomaohgcoomappn80y", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil
u4 = User.create name: "James Ferguson", email: "jferg@ga.co", image: "qqos0d1vmsukhm5pwacj", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil
u5 = User.create name: "Chris Badger Badgerson", email: "badger@ga.co", image: "xnhl2fxurhswvjpueb90", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil
u6 = User.create name: "Tom", email: "hanks@legend.co", image: "r2mrkx3uzyfbtxr5celk", admin: false, password: "chicken", password_confirmation: "chicken", latitude: nil, longitude: nil, address: nil

Location.destroy_all
l1 = Location.create name: "Subway", image: "https://pbs.twimg.com/profile_images/647435449737347076/yUly8n6G.jpg", latitude: nil, longitude: nil, address: nil
l2 = Location.create name: "Sourdough", image: "https://media.timeout.com/images/103088716/630/472/image.jpg", latitude: nil, longitude: nil, address: nil
l3 = Location.create name: "Mr Bao", image: "https://easyfoodhacks.files.wordpress.com/2015/09/picmonkey-collage1.jpg", latitude: nil, longitude: nil, address: nil
l4 = Location.create name: "Hotel CBD", image: "http://www.visitsydneyaustralia.com.au/images/77-york-street.jpg", latitude: nil, longitude: nil, address: nil
l5 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l6 = Location.create name: "Taco's R Us", image: nil, latitude: -33.8663179, longitude: 151.2076574, address: "320 George st, sydney"
l7 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l8 = Location.create name: "sushi", image: nil, latitude: -33.8696551, longitude: 151.2063974, address: "54 York st, sydney"
l9 = Location.create name: "Sushi Hotaru", image: nil, latitude: -33.8723996, longitude: 151.2071178, address: "The Galeries, 500 George St, Sydney"
l10 = Location.create name: "Subway", image: nil, latitude: -33.8659108, longitude: 151.2051583, address: "2/50 Clarence St, Sydney"
l11 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l12 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l13 = Location.create name: "Sourdough", image: nil, latitude: nil, longitude: nil, address: "62 York street, sydney"
l14 = Location.create name: "Sourdough", image: nil, latitude: nil, longitude: nil, address: "62 York street, sydney"
l15 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l16 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l17 = Location.create name: "Sourdough", image: nil, latitude: -33.8699897, longitude: 151.2064312, address: "62 York street, sydney"
l18 = Location.create name: "Sushi Hotaru", image: nil, latitude: -33.8723996, longitude: 151.2071178, address: "The Galeries, 500 George St, Sydney"
l19 = Location.create name: "Sushi Hotaru", image: nil, latitude: -33.8723996, longitude: 151.2071178, address: "The Galeries, 500 George St, Sydney"
l20 = Location.create name: "Badger & Brown's Burgerie", image: nil, latitude: 41.4156322, longitude: -73.3146979, address: "55 King St, Newtown"

LunchItem.destroy_all
li1 = LunchItem.create name: "Beef Taco", user_id: u1.id, location_id: l1.id, price: 10, image: "wividrcaa3erptnl4nxl"
li2 = LunchItem.create name: "Beef sandwich", user_id: u2.id, location_id: l2.id, price: 10, image: "m6a7jl4bo4s86w4hgemj"
li3 = LunchItem.create name: "Salmon sushi roll", user_id: u3.id, location_id: l3.id, price: 8, image: "v0b82qf4tgzaefaoab6f"
li4 = LunchItem.create name: "Meatball foot long sub", user_id: u4.id, location_id: l4.id, price: 8, image: "ig3tprergrrw6fisk01m"
li5 = LunchItem.create name: "Beef Sandwich", user_id: u5.id, location_id: l5.id, price: 9, image: "vlizhqfktnlzxghsvmrr"
li6 = LunchItem.create name: "Salmon sushi roll", user_id: u6.id, location_id: l6.id, price: 10, image: "aklxzq3hcfppe7cx9qjw"
li7 = LunchItem.create name: "Badger burger", user_id: u1.id, location_id: l7.id, price: 15, image: "tyusw6xncxtl4vfucnkh"

Rating.destroy_all
Rating.create!([
  {user_id: u1.id, lunch_item_id: li1.id},
  {user_id: u1.id, lunch_item_id: li2.id},
  {user_id: u1.id, lunch_item_id: li3.id}
])
