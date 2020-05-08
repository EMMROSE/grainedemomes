# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "Destroy all Categories"
Category.destroy_all

puts ">>>>>> Done!"
puts "----------"

puts "Create Categories"
c1 = Category.create!(name: "Cardigan et Pull")
c1.save!
c2 = Category.create!(name: "Combinaison et Salopette")
c2.save!
c3 = Category.create!(name: "Petit bas")
c3.save!
c4 = Category.create!(name: "Petit haut manches courtes")
c4.save!
c5 = Category.create!(name: "Petit haut manches longues")
c5.save!
c6 = Category.create!(name: "Robe")
c6.save!
c7 = Category.create!(name: "Veste et Manteaux")
c7.save!

puts "Create Genres"
Genre.destroy_all
g1 = Genre.create!(name: "male")
g1.save!
g2 = Genre.create!(name: "female")
g2.save!
g3 = Genre.create!(name: "both")
g3.save!
puts "----------"

puts "Create Sizes"
Size.destroy_all
s1 = Size.create!(name: "3")
s1.save!
s2 = Size.create!(name: "6")
s2.save!
s3 = Size.create!(name: "12")
s3.save!
s4 = Size.create!(name: "18")
s4.save!
s5 = Size.create!(name: "24")
s5.save!
s6 = Size.create!(name: "36")
s6.save!
puts "----------"

puts "Destroy all Products"
Product.destroy_all
puts ">>>>>> Done!"
puts "----------"
puts "Create Products"
puts "----------"
p1 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00001", price_cents: 100, old_price_cents: 300, stock: 1})
p1.category = c1
p1.genre = g1
p1.size = s1
puts "p1 saved"
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p1.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p1.save!
puts "P1 done"

p2 = Product.create({:name=>"Robe", :description=>"Robe-vichy-ernest", :sku=>"00002", price_cents: 200, old_price_cents: 400, stock: 1})
p2.category = c2
p2.genre = g2
p2.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-traits_ebc5en.jpg')
p2.cover.attach(io: file, filename: 'barboteuse-traits_ebc5en.jpg', content_type: 'image/jpg')
p2.save!
puts "P2 done"

p3 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00003", price_cents: 100, old_price_cents: 300, stock: 1})
p3.category = c3
p3.genre = g3
p3.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p3.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p3.save!
puts "P3 done"

p4 = Product.create({:name=>"Robe", :description=>"Robe-vichy-ernest", :sku=>"00004", price_cents: 200, old_price_cents: 400, stock: 1})
p4.category = c4
p4.genre = g1
p4.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-traits_ebc5en.jpg')
p4.cover.attach(io: file, filename: 'barboteuse-traits_ebc5en.jpg', content_type: 'image/jpg')
p4.save!
puts "P4 done"

p5 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00005", price_cents: 100, old_price_cents: 300, stock: 1})
p5.category = c5
p5.genre = g2
p5.size = s5
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p5.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p5.save!
puts "P5 done"

p6 = Product.create({:name=>"Robe", :description=>"Robe-vichy-ernest", :sku=>"00006", price_cents: 200, old_price_cents: 400, stock: 1})
p6.category = c6
p6.genre = g3
p6.size = s6
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-traits_ebc5en.jpg')
p6.cover.attach(io: file, filename: 'barboteuse-traits_ebc5en.jpg', content_type: 'image/jpg')
p6.save!
puts "P6 done"

p7 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00007", price_cents: 100, old_price_cents: 300, stock: 1})
p7.category = c7
p7.genre = g1
p7.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p7.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p7.save!
puts "P7 done"

p8 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00008", price_cents: 100, old_price_cents: 300, stock: 1})
p8.category = c1
p8.genre = g2
p8.size = s5
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p8.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p8.save!
puts "P8 done"
puts "-------"
puts ">>>>>> #{Product.count} products created!"
puts ">>>>>> Done! Seeds achieved"

