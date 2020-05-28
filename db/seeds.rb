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
puts ">>>>>> #{Category.count} Categories created!"
puts "----------"

puts "Create Genres"
Genre.destroy_all
g1 = Genre.create!(name: "garçon")
g1.save!
g2 = Genre.create!(name: "fille")
g2.save!
g3 = Genre.create!(name: "mixte")
g3.save!
puts ">>>>>> #{Genre.count} Genres created!"
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
puts ">>>>>> #{Size.count} sizes created!"
puts "----------"

puts "Create Gift"
Gift.destroy_all
puts "----------"
gift1 = Gift.create!(name: "Formule 3 vêtements pour 1 mois", price_cents: 3500)
gift1.save!
gift2 = Gift.create!(name: "Formule 5 vêtements pour 1 mois", price_cents: 4900)
gift2.save!
gift3 = Gift.create!(name: "Formule 3 vêtements pour 2 mois", price_cents: 4900)
gift3.save!
gift4 = Gift.create!(name: "Formule 5 vêtements pour 2 mois", price_cents: 6900)
gift4.save!
puts ">>>>>> Done!"
puts "#{gift1.id}"
puts ">>>>>> #{Gift.count} gifts created!"

puts "Destroy all Products"
Product.destroy_all
puts ">>>>>> Done!"
puts "----------"
puts "Create Products"
puts "----------"
# p1 = Product.create({:name=>"Barboteuse", :description=>"barboteuse-vichy-ernest", :sku=>"00001", price_cents: 100, old_price_cents: 300, stock: 1})
# p1.category = c1
# p1.genre = g1
# p1.size = s1
# puts "p1 saved"
# file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
# p1.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
# p1.save!
# puts "P1 done"

# p2 = Product.create({:name=>"Robe", :description=>"Robe-vichy-ernest", :sku=>"00002", price_cents: 200, old_price_cents: 400, stock: 1})
# p2.category = c2
# p2.genre = g2
# p2.size = s2
# file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-traits_ebc5en.jpg')
# p2.cover.attach(io: file, filename: 'barboteuse-traits_ebc5en.jpg', content_type: 'image/jpg')
# p2.save!
# puts "P2 done"



p1 = Product.create({:name=>"Robe bébé Eat me", :description=>"50`%` coton 50`%` polyester", :sku=>"00001", price_cents: 2900, old_price_cents: 5800, stock: 1})
p1.category = c6
p1.genre = g2
p1.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p1.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/Screenshot_20191022-101700_Instagram_vj1t28.jpg')
p1.photo.attach(io: file, filename: 'Screenshot_20191022-101700_Instagram_vj1t28.jpg', content_type: 'image/jpg')
p1.save!

p2 = Product.create({:name=>"Robe bébé Eat me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00002", price_cents: 2900, old_price_cents: 5800, stock: 1})
p2.category = c6
p2.genre = g2
p2.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p2.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/Screenshot_20191022-101700_Instagram_vj1t28.jpg')
p2.photo.attach(io: file, filename: 'Screenshot_20191022-101700_Instagram_vj1t28.jpg', content_type: 'image/jpg')
p2.save!

p3 = Product.create({:name=>"Robe bébé Eat me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00003", price_cents: 2900, old_price_cents: 5800, stock: 1})
p3.category = c6
p3.genre = g2
p3.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p3.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/Screenshot_20191022-101700_Instagram_vj1t28.jpg')
p3.photo.attach(io: file, filename: 'Screenshot_20191022-101700_Instagram_vj1t28.jpg', content_type: 'image/jpg')
p3.save!

p4 = Product.create({:name=>"Robe bébé Eat me", :description=>"50%` coton 50%` polyester ", :sku=>"00004", price_cents: 2900, old_price_cents: 5800, stock: 1})
p4.category = c6
p4.genre = g2
p4.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p4.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/Screenshot_20191022-101700_Instagram_vj1t28.jpg')
p4.photo.attach(io: file, filename: 'Screenshot_20191022-101700_Instagram_vj1t28.jpg', content_type: 'image/jpg')
p4.save!

p5 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50`%` coton 50`%` polyester", :sku=>"00005", price_cents: 2900, old_price_cents: 5800, stock: 1})
p5.category = c6
p5.genre = g2
p5.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p5.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p5.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p5.save!

p6 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50`%` coton 50`%` polyester ", :sku=>"00006", price_cents: 2900, old_price_cents: 5800, stock: 1})
p6.category = c6
p6.genre = g2
p6.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p6.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p6.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p6.save!

p7 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50`%` coton 50`%` polyester ", :sku=>"00007", price_cents: 2900, old_price_cents: 5800, stock: 1})
p7.category = c6
p7.genre = g2
p7.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p7.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p7.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p7.save!

p8 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50`%` coton 50`%` polyester ", :sku=>"00008", price_cents: 2900, old_price_cents: 5800, stock: 1})
p8.category = c6
p8.genre = g2
p8.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p8.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p8.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p8.save!

p9 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique", :sku=>"00009", price_cents: 1800, old_price_cents: 3600, stock: 1})
p9.category = c3
p9.genre = g3
p9.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689384/171220-112017_1000x1000_jpg_amfcju.jpg')
p9.cover.attach(io: file, filename: '171220-112017_1000x1000_jpg_amfcju.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689054/sarouel-baboush-bleu-petrole_7_m3iouv.jpg')
p9.photo.attach(io: file, filename: 'sarouel-baboush-bleu-petrole_7_m3iouv.jpg', content_type: 'image/jpg')
p9.save!

p10 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=> "100`%` coton biologique ", :sku=>"00010", price_cents: 1800, old_price_cents: 3600, stock: 1})
p10.category = c3
p10.genre = g3
p10.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p10.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p10.save!

p11 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100'%'' coton biologique ", :sku=>"00011", price_cents: 1800, old_price_cents: 3600, stock: 1})
p11.category = c3
p11.genre = g3
p11.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p11.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p11.save!

p12 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique ", :sku=>"00012", price_cents: 1800, old_price_cents: 3600, stock: 1})
p12.category = c3
p12.genre = g3
p12.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p12.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p12.save!

p13 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique", :sku=>"00013", price_cents: 1800, old_price_cents: 3600, stock: 1})
p13.category = c3
p13.genre = g3
p13.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p13.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p13.save!

p14 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique", :sku=>"00014", price_cents: 1800, old_price_cents: 3600, stock: 1})
p14.category = c3
p14.genre = g3
p14.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p14.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p14.save!

p15 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique", :sku=>"00015", price_cents: 1800, old_price_cents: 3600, stock: 1})
p15.category = c3
p15.genre = g3
p15.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p15.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p15.save!

p16 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100`%` coton biologique", :sku=>"00016", price_cents: 1800, old_price_cents: 3600, stock: 1})
p16.category = c3
p16.genre = g3
p16.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p16.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p16.save!

p17 = Product.create({:name=>"Barboteuse en coton | La Démo", :description=>"100`%` coton ", :sku=>"00017", price_cents: 3200, old_price_cents: 4200, stock: 1})
p17.category = c2
p17.genre = g3
p17.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p17.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p17.save!

p18 = Product.create({:name=>"Barboteuse en coton | La Démo", :description=>"100`%` coton", :sku=>"00018", price_cents: 3200, old_price_cents: 4200, stock: 1})
p18.category = c2
p18.genre = g3
p18.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p18.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p18.save!

p19 = Product.create({:name=>"Jogger Eat Me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00019", price_cents: 1900, old_price_cents: 4000, stock: 1})
p19.category = c3
p19.genre = g3
p19.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p19.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p19.save!

p20 = Product.create({:name=>"Jogger Eat Me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00020", price_cents: 1900, old_price_cents: 4000, stock: 1})
p20.category = c3
p20.genre = g3
p20.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p20.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p20.save!

p21 = Product.create({:name=>"Jogger Eat Me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00021", price_cents: 1900, old_price_cents: 4000, stock: 1})
p21.category = c3
p21.genre = g3
p21.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p21.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p21.save!

p22 = Product.create({:name=>"Jogger Eat Me", :description=>"50`%` coton 50`%` polyester ", :sku=>"00022", price_cents: 1900, old_price_cents: 4000, stock: 1})
p22.category = c3
p22.genre = g3
p22.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p22.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p22.save!

p23 = Product.create({:name=>"Barboteuse en gaze gris | Léon et Louise", :description=>"100`%` coton", :sku=>"00023", price_cents: 1900, old_price_cents: 6000, stock: 1})
p23.category = c2
p23.genre = g3
p23.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p23.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p23.save!

p24 = Product.create({:name=>"Sarouel Bauh | LOUP", :description=>"100`%` coton", :sku=>"00024", price_cents: 1750, old_price_cents: 3500, stock: 1})
p24.category = c3
p24.genre = g3
p24.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p24.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p24.save!

p25 = Product.create({:name=>"Cardigan Herbier | Risu Risu", :description=>"100`%` coton bio, couleur Camel", :sku=>"00025", price_cents: 2900, old_price_cents: 5200, stock: 1})
p25.category = c1
p25.genre = g2
p25.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p25.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p25.save!

p26 = Product.create({:name=>"Cardigan Herbier | Risu Risu", :description=>"100`%` coton bio, couleur Camel", :sku=>"00026", price_cents: 2900, old_price_cents: 5200, stock: 1})
p26.category = c1
p26.genre = g2
p26.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p26.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p26.save!

p27 = Product.create({:name=>"Blouse Florence | Petite Lucette", :description=>"100`%` coton", :sku=>"00027", price_cents: 2900, old_price_cents: 6200, stock: 1})
p27.category = c5
p27.genre = g2
p27.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p27.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p27.save!

p28 = Product.create({:name=>"Blouse Florence | Petite Lucette", :description=>"100`%` coton", :sku=>"00028", price_cents: 2900, old_price_cents: 6200, stock: 1})
p28.category = c5
p28.genre = g2
p28.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p28.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p28.save!

p29 = Product.create({:name=>"Combinaison en molleton de coton biologique", :description=>"100`%` coton biologique, couleur taupe", :sku=>"00029", price_cents: 2900, old_price_cents: 5900, stock: 1})
p29.category = c2
p29.genre = g3
p29.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p29.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p29.save!

p30 = Product.create({:name=>"Combinaison en molleton de coton biologique", :description=>"100`%` coton biologique, couleur moutarde", :sku=>"00030", price_cents: 2900, old_price_cents: 5900, stock: 1})
p30.category = c2
p30.genre = g3
p30.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p30.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p30.save!

p31 = Product.create({:name=>"Blouse Roméo en coton biologique", :description=>"100`%` coton biologique ", :sku=>"00031", price_cents: 2200, old_price_cents: 4400, stock: 1})
p31.category = c5
p31.genre = g3
p31.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p31.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p31.save!

p32 = Product.create({:name=>"Blouse Roméo en coton biologique", :description=>"100`%` coton biologique ", :sku=>"00032", price_cents: 2200, old_price_cents: 4400, stock: 1})
p32.category = c5
p32.genre = g3
p32.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p32.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p32.save!

p33 = Product.create({:name=>"Short Simon", :description=>"100`%` coton biologique ", :sku=>"00033", price_cents: 1500, old_price_cents: 2400, stock: 1})
p33.category = c3
p33.genre = g3
p33.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p33.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p33.save!

p34 = Product.create({:name=>"Short Simon", :description=>"100`%` coton biologique ", :sku=>"00034", price_cents: 1500, old_price_cents: 2400, stock: 1})
p34.category = c3
p34.genre = g3
p34.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p34.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p34.save!

p35 = Product.create({:name=>"Robe Cléa denim", :description =>"100`%` coton", :sku=>"00035", price_cents: 4900, old_price_cents: 6300, stock: 1})
p35.category = c6
p35.genre = g2
p35.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p35.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p35.save!

p36 = Product.create({:name=>"Robe Cléa denim", :description =>"100`%` coton", :sku=>"00036", price_cents: 4900, old_price_cents: 6300, stock: 1})
p36.category = c6
p36.genre = g2
p36.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p36.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p36.save!

p37 = Product.create({:name=>"Robe Cléa imprimé aquarelle", :description =>"100`%` coton", :sku=>"00037", price_cents: 4900, old_price_cents: 6300, stock: 1})
p37.category = c6
p37.genre = g2
p37.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p37.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p37.save!

p38 = Product.create({:name=>"Robe Cléa imprimé aquarelle", :description =>"100`%` coton", :sku=>"00038", price_cents: 4900, old_price_cents: 6300, stock: 1})
p38.category = c6
p38.genre = g2
p38.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p38.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p38.save!

p39 = Product.create({:name=>"Chemise peintre", :description =>"100`%` coton biologique", :sku=>"00039", price_cents: 2500, old_price_cents: 4300, stock: 1})
p39.category = c5
p39.genre = g3
p39.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p39.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p39.save!

p40 = Product.create({:name=>"Chemise peintre", :description =>"100`%` coton biologique ", :sku=>"00040", price_cents: 2500, old_price_cents: 4300, stock: 1})
p40.category = c5
p40.genre = g2
p40.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1588934123/graine/barboteuse-vichy-ernest_cwayna.jpg')
p40.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p40.save!

puts "-------"
puts ">>>>>> #{Product.count} products created!"
puts ">>>>>> Done! Seeds achieved"
