# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
raise "Development seeds only (for now)!" unless Rails.env.development?

# Let's do this ...

## USERS

puts "Finding or creating users ..."


user1 = User.find_or_create_by!({firstname: "Adam", lastname: "Rysyk", email: "adam@email.com", password: "123", isdesigner: 1})
user2 = User.find_or_create_by!(firstname: "Eric", lastname: "Casey", email: "eric@email.com", password: "123", isdesigner: 1)
user3 = User.find_or_create_by!(firstname: "Sally", lastname: "Smith", email: "sally@email.com", password: "123", isdesigner: 1)
user4 = User.find_or_create_by!(firstname: "Bethany", lastname: "Matthews", email: "bethany@email.com", password: "123", isdesigner: 0)


puts user1
## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

puts "user1*"

user1.products.create!({
  name: "tshirt1",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "buy this shirt",
  price_cents: "2999"
})

puts "user1***"

user2.products.create!(
  name: "tshirt2",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "never wash this shirt",
  price_cents: "2999"
)

user3.products.create!(
  name: "tshirt3",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "steal this design",
  price_cents: "2999"
)

user1.products.create!(
  name: "tshirt4",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "live, love, laugh, larp",
  price_cents: "2999"
)

user2.products.create!(
  name: "tshirt5",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "lorem tshirt",
  price_cents: "2999"
)

user3.products.create!(
  name: "tshirt6",
  image: "https://www.blacksocks.com/files/styles/blk_product_large/public/T-Shirt-Suzette-weiss_0.png?itok=d1sWT_ZC",
  description: "mr cool ice",
  price_cents: "2999"
)








puts "DONE!"


