# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating a database'
Restaurant.destroy_all

puts '1..2..3'
restaurant_new = [
  {
    name: 'Chu chu',
    address: 'Rua Hercules',
    phone_number: '88998889',
    category: 'chinese'
  },
   {
    name: 'Hong Kong Thingy',
    address: 'Rua Alameda',
    phone_number: '1256300',
    category: 'italian'
  },
  {
    name: 'Puro',
    address: 'Rua Pombal',
    phone_number: '63528917',
    category: 'japanese'
  },
  {
    name: 'KFC',
    address: 'Mall in Portugal',
    phone_number: '99997786',
    category: 'french'
  },
  {
    name: 'Waffle',
    address: 'Rua Eagle',
    phone_number: '63547689',
    category: 'belgian'
  },

]

Restaurant.create!(restaurant_new)
puts 'Done!'




  # create_table "restaurants", force: :cascade do |t|
  #   t.string "name"
  #   t.string "address"
  #   t.string "phone_number"
  #   t.string "category"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

  # create_table "reviews", force: :cascade do |t|
  #   t.text "content"
  #   t.integer "rating"
  #   t.integer "restaurant_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
