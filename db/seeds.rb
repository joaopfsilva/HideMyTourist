# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all
City.destroy_all


40.times do |_|
  City.create(name: Faker::Address.city)
end


Profile.destroy_all

User.all.each do |user|
  Profile.create(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 gender: ( rand(5) < 3 ? 'M' : 'F' ),
                 birth_date: Faker::Date.birthday(20, 33),
                 photo: "user_gqomus",
                 user_id: user.id
                )
end
Place.destroy_all

PlaceList.destroy_all
Category.destroy_all

categories = ['coffee', 'restaurant', 'bars', 'disco', 'parks']

categories.each do |category|
  Category.create(name: category)
end


10.times do |_|
  new_place = Place.new
  new_place.name = Faker::University.name
  new_place.price = rand(50)
  new_place.category_id = Category.order("RANDOM()").first.id
  new_place.save
end

# card_url = {'lisbon1' => 'https://www.pexels.com/photo/adult-backpack-blur-business-298018',
#             'lisbon2' => 'https://www.pexels.com/photo/city-lisbon-houses-portugal-9253',
#             'lisbon3' => 'https://www.pexels.com/photo/lisbon-trolleys-trams-street-31737',
#             'amsterdam1' => 'https://www.pexels.com/photo/amsterdam-canal-lights-red-light-district-9320',
#             'amsterdam2' => 'https://www.pexels.com/photo/landscape-water-weather-travel-60247',
#             'amsterdam3' => 'https://www.pexels.com/photo/fishing-boat-ship-green-2487',
#             'pic1' => 'https://www.pexels.com/photo/adult-adventure-beautiful-climb-287240',
#             'pic2' => 'https://www.pexels.com/photo/train-locomotive-nature-railroad-29619',
#             'pic3' => 'https://www.pexels.com/photo/2-people-sitting-with-view-of-yellow-flowers-during-daytime-196666',
#             'pic4' => 'https://www.pexels.com/photo/women-camping-hiking-travel-25543',
#             'pic5' => 'https://www.pexels.com/photo/people-sitting-on-green-grass-130111'
#           }

card_url = [ 'https://www.pexels.com/photo/adult-backpack-blur-business-298018',
             'https://www.pexels.com/photo/city-lisbon-houses-portugal-9253',
             'https://www.pexels.com/photo/lisbon-trolleys-trams-street-31737',
             'https://www.pexels.com/photo/amsterdam-canal-lights-red-light-district-9320',
             'https://www.pexels.com/photo/landscape-water-weather-travel-60247',
             'https://www.pexels.com/photo/fishing-boat-ship-green-2487',
             'https://www.pexels.com/photo/adult-adventure-beautiful-climb-287240',
             'https://www.pexels.com/photo/train-locomotive-nature-railroad-29619',
             'https://www.pexels.com/photo/2-people-sitting-with-view-of-yellow-flowers-during-daytime-196666',
             'https://www.pexels.com/photo/women-camping-hiking-travel-25543',
             'https://www.pexels.com/photo/people-sitting-on-green-grass-130111'
           ]

Photo.destroy_all

card_url.each do |photo_card|
  Photo.create(url: photo_card)
end

Profile.all.each do |profile|
  City.all.each do |city|
    new_list = List.new
    new_list.profile_id = profile.id
    new_list.city_id = city.id
    new_list.save

    Place.all.each do |place|
      new_rel = PlaceList.new
      new_rel.place_id = place.id
      new_rel.list_id = new_list.id
      new_rel.photo_id = Photo.order("RANDOM()").first.id
      new_rel.save
    end
  end
end





















