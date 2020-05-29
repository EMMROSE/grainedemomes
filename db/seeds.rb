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
gift1.id = 1
gift1.save!
gift2 = Gift.create!(name: "Formule 5 vêtements pour 1 mois", price_cents: 4900)
gift2.id = 2
gift2.save!
gift3 = Gift.create!(name: "Formule 3 vêtements pour 2 mois", price_cents: 4900)
gift3.id = 3
gift3.save!
gift4 = Gift.create!(name: "Formule 5 vêtements pour 2 mois", price_cents: 6900)
gift4.id = 4
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

p1 = Product.create({:name=>"Robe bébé Eat me", :description=>"50#{"%"} coton 50#{"%"} polyester", :sku=>"00001", price_cents: 2900, old_price_cents: 5800, stock: 1})
p1.category = c6
p1.genre = g2
p1.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p1.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/robe_eat_me.jpg')
p1.photo.attach(io: file, filename: 'robe_eat_me.jpg', content_type: 'image/jpg')
p1.save!

p2 = Product.create({:name=>"Robe bébé Eat me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00002", price_cents: 2900, old_price_cents: 5800, stock: 1})
p2.category = c6
p2.genre = g2
p2.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p2.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/robe_eat_me.jpg')
p2.photo.attach(io: file, filename: 'robe_eat_me.jpg', content_type: 'image/jpg')
p2.save!

p3 = Product.create({:name=>"Robe bébé Eat me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00003", price_cents: 2900, old_price_cents: 5800, stock: 1})
p3.category = c6
p3.genre = g2
p3.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p3.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/robe_eat_me.jpg')
p3.photo.attach(io: file, filename: 'robe_eat_me.jpg', content_type: 'image/jpg')
p3.save!

p4 = Product.create({:name=>"Robe bébé Eat me", :description=>"50%` coton 50%` polyester ", :sku=>"00004", price_cents: 2900, old_price_cents: 5800, stock: 1})
p4.category = c6
p4.genre = g2
p4.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692731/robe-eat-me-blune-removebg-preview_hwgay6.png')
p4.cover.attach(io: file, filename: 'robe-eat-me-blune-removebg-preview_hwgay6.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590688819/robe_eat_me.jpg')
p4.photo.attach(io: file, filename: 'robe_eat_me.jpg', content_type: 'image/jpg')
p4.save!

p5 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50#{"%"} coton 50#{"%"} polyester", :sku=>"00005", price_cents: 2900, old_price_cents: 5800, stock: 1})
p5.category = c6
p5.genre = g2
p5.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p5.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p5.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p5.save!

p6 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00006", price_cents: 2900, old_price_cents: 5800, stock: 1})
p6.category = c6
p6.genre = g2
p6.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p6.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p6.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p6.save!

p7 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00007", price_cents: 2900, old_price_cents: 5800, stock: 1})
p7.category = c6
p7.genre = g2
p7.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p7.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p7.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p7.save!

p8 = Product.create({:name=>"Robe bébé Baby doll", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00008", price_cents: 2900, old_price_cents: 5800, stock: 1})
p8.category = c6
p8.genre = g2
p8.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_hikieo.jpg')
p8.cover.attach(io: file, filename: 'robe-bebe-baby-doll_hikieo.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590695132/robe-bebe-baby-doll_1_m01yzz.jpg')
p8.photo.attach(io: file, filename: 'robe-bebe-baby-doll_1_m01yzz.jpg', content_type: 'image/jpg')
p8.save!

p9 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique", :sku=>"00009", price_cents: 1800, old_price_cents: 3600, stock: 1})
p9.category = c3
p9.genre = g3
p9.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689384/171220-112017_1000x1000_jpg_amfcju.jpg')
p9.cover.attach(io: file, filename: '171220-112017_1000x1000_jpg_amfcju.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689054/sarouel-baboush-bleu-petrole_7_m3iouv.jpg')
p9.photo.attach(io: file, filename: 'sarouel-baboush-bleu-petrole_7_m3iouv.jpg', content_type: 'image/jpg')
p9.save!

p10 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=> "100#{"%"} coton biologique ", :sku=>"00010", price_cents: 1800, old_price_cents: 3600, stock: 1})
p10.category = c3
p10.genre = g3
p10.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689402/pantalon_polaire_moutarde.jpg')
p10.cover.attach(io: file, filename: 'pantalon_polaire_moutarde.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689481/sarouel-baboush-moutarde_5_drmfb3.jpg')
p10.photo.attach(io: file, filename: 'sarouel-baboush-moutarde_5_drmfb3.jpg', content_type: 'image/jpg')
p10.save!

p11 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100'%'' coton biologique ", :sku=>"00011", price_cents: 1800, old_price_cents: 3600, stock: 1})
p11.category = c3
p11.genre = g3
p11.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689384/171220-112017_1000x1000_jpg_amfcju.jpg')
p11.cover.attach(io: file, filename: '171220-112017_1000x1000_jpg_amfcju.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689054/sarouel-baboush-bleu-petrole_7_m3iouv.jpg')
p11.photo.attach(io: file, filename: 'sarouel-baboush-bleu-petrole_7_m3iouv.jpg', content_type: 'image/jpg')
p11.save!

puts "------10%-------"

p12 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique ", :sku=>"00012", price_cents: 1800, old_price_cents: 3600, stock: 1})
p12.category = c3
p12.genre = g3
p12.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689402/pantalon_polaire_moutarde.jpg')
p12.cover.attach(io: file, filename: 'pantalon_polaire_moutarde.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689481/sarouel-baboush-moutarde_5_drmfb3.jpg')
p12.photo.attach(io: file, filename: 'sarouel-baboush-moutarde_5_drmfb3.jpg', content_type: 'image/jpg')
p12.save!

p13 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique", :sku=>"00013", price_cents: 1800, old_price_cents: 3600, stock: 1})
p13.category = c3
p13.genre = g3
p13.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689384/171220-112017_1000x1000_jpg_amfcju.jpg')
p13.cover.attach(io: file, filename: '171220-112017_1000x1000_jpg_amfcju.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689054/sarouel-baboush-bleu-petrole_7_m3iouv.jpg')
p13.photo.attach(io: file, filename: 'sarouel-baboush-bleu-petrole_7_m3iouv.jpg', content_type: 'image/jpg')
p13.save!

p14 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique", :sku=>"00014", price_cents: 1800, old_price_cents: 3600, stock: 1})
p14.category = c3
p14.genre = g3
p14.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689384/171220-112017_1000x1000_jpg_amfcju.jpg')
p14.cover.attach(io: file, filename: '171220-112017_1000x1000_jpg_amfcju.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689054/sarouel-baboush-bleu-petrole_7_m3iouv.jpg')
p14.photo.attach(io: file, filename: 'sarouel-baboush-bleu-petrole_7_m3iouv.jpg', content_type: 'image/jpg')
p14.save!

p15 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique", :sku=>"00015", price_cents: 1800, old_price_cents: 3600, stock: 1})
p15.category = c3
p15.genre = g3
p15.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689402/pantalon_polaire_moutarde.jpg')
p15.cover.attach(io: file, filename: 'pantalon_polaire_moutarde.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689481/sarouel-baboush-moutarde_5_drmfb3.jpg')
p15.photo.attach(io: file, filename: 'sarouel-baboush-moutarde_5_drmfb3.jpg', content_type: 'image/jpg')
p15.save!

p16 = Product.create({:name=>"Pantalon en coton polaire biologique", :description=>"100#{"%"} coton biologique", :sku=>"00016", price_cents: 1800, old_price_cents: 3600, stock: 1})
p16.category = c3
p16.genre = g3
p16.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689402/pant_polaire_rose.jpg')
p16.cover.attach(io: file, filename: 'pant_polaire_rose.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689004/sarouel-baboush-bois-de-rose.jpg')
p16.photo.attach(io: file, filename: 'sarouel-baboush-bois-de-rose.jpg', content_type: 'image/jpg')
p16.save!

p17 = Product.create({:name=>"Barboteuse en coton", :description=>"100#{"%"} coton", :sku=>"00017", price_cents: 3200, old_price_cents: 4200, stock: 1})
p17.category = c2
p17.genre = g3
p17.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689309/barboteuse_sea.png')
p17.cover.attach(io: file, filename: 'barboteuse_sea.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689314/barboteuse_sea_porte.jpg')
p17.photo.attach(io: file, filename: 'barboteuse_sea_porte.jpg', content_type: 'image/jpg')
p17.save!

p18 = Product.create({:name=>"Barboteuse en coton", :description=>"100#{"%"} coton", :sku=>"00018", price_cents: 3200, old_price_cents: 4200, stock: 1})
p18.category = c2
p18.genre = g3
p18.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689288/ray_barboteuse.jpg')
p18.cover.attach(io: file, filename: 'ray_barboteuse.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689311/borboteuse_ray_porte.jpg')
p18.photo.attach(io: file, filename: 'borboteuse_ray_porte.jpg', content_type: 'image/jpg')
p18.save!

p19 = Product.create({:name=>"Jogger Eat Me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00019", price_cents: 1900, old_price_cents: 4000, stock: 1})
p19.category = c3
p19.genre = g3
p19.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689643/jogger-eat-me_fhwxiw.jpg')
p19.cover.attach(io: file, filename: 'jogger-eat-me_fhwxiw.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689655/joogereatmeporte.jpg')
p19.photo.attach(io: file, filename: 'joogereatmeporte.jpg', content_type: 'image/jpg')
p19.save!

p20 = Product.create({:name=>"Jogger Eat Me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00020", price_cents: 1900, old_price_cents: 4000, stock: 1})
p20.category = c3
p20.genre = g3
p20.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689643/jogger-eat-me_fhwxiw.jpg')
p20.cover.attach(io: file, filename: 'jogger-eat-me_fhwxiw.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689655/joogereatmeporte.jpg')
p20.photo.attach(io: file, filename: 'joogereatmeporte.jpg', content_type: 'image/jpg')
p20.save!

puts "---50%----"

p21 = Product.create({:name=>"Jogger Eat Me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00021", price_cents: 1900, old_price_cents: 4000, stock: 1})
p21.category = c3
p21.genre = g3
p21.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689643/jogger-eat-me_fhwxiw.jpg')
p21.cover.attach(io: file, filename: 'jogger-eat-me_fhwxiw.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689655/joogereatmeporte.jpg')
p21.photo.attach(io: file, filename: 'joogereatmeporte.jpg', content_type: 'image/jpg')
p21.save!

p22 = Product.create({:name=>"Jogger Eat Me", :description=>"50#{"%"} coton 50#{"%"} polyester ", :sku=>"00022", price_cents: 1900, old_price_cents: 4000, stock: 1})
p22.category = c3
p22.genre = g3
p22.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689643/jogger-eat-me_fhwxiw.jpg')
p22.cover.attach(io: file, filename: 'jogger-eat-me_fhwxiw.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689655/joogereatmeporte.jpg')
p22.photo.attach(io: file, filename: 'joogereatmeporte.jpg', content_type: 'image/jpg')
p22.save!

p23 = Product.create({:name=>"Barboteuse en gaze gris", :description=>"100#{"%"} coton", :sku=>"00023", price_cents: 1900, old_price_cents: 6000, stock: 1})
p23.category = c2
p23.genre = g3
p23.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689530/barboteuse-en-gaze-bleu-marin.jpg')
p23.cover.attach(io: file, filename: 'barboteuse-en-gaze-bleu-marin.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689530/barboteuse-en-gaze-bleu-marin_porte.jpg')
p23.photo.attach(io: file, filename: 'barboteuse-en-gaze-bleu-marin_porte.jpg', content_type: 'image/jpg')
p23.save!

p24 = Product.create({:name=>"Sarouel Bauh", :description=>"100#{"%"} coton", :sku=>"00024", price_cents: 1750, old_price_cents: 3500, stock: 1})
p24.category = c3
p24.genre = g3
p24.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689837/sarouel-bebe-bauh.jpg')
p24.cover.attach(io: file, filename: 'sarouel-bebe-bauh.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689836/sarouel-bebe-bauh_2_untt6b.jpg')
p24.photo.attach(io: file, filename: 'sarouel-bebe-bauh_2_untt6b.jpg', content_type: 'image/jpg')
p24.save!

p25 = Product.create({:name=>"Cardigan Herbier", :description=>"100#{"%"} coton bio, couleur Camel", :sku=>"00025", price_cents: 2900, old_price_cents: 5200, stock: 1})
p25.category = c1
p25.genre = g2
p25.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689882/cardigan_kpmcz3.png')
p25.cover.attach(io: file, filename: 'cardigan_kpmcz3.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689882/cardigan_kpmcz3.png')
p25.photo.attach(io: file, filename: 'cardigan_kpmcz3.png', content_type: 'image/png')
p25.save!

p26 = Product.create({:name=>"Cardigan Herbier", :description=>"100#{"%"} coton bio, couleur Camel", :sku=>"00026", price_cents: 2900, old_price_cents: 5200, stock: 1})
p26.category = c1
p26.genre = g2
p26.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689882/cardigan_kpmcz3.png')
p26.cover.attach(io: file, filename: 'cardigan_kpmcz3.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590689882/cardigan_kpmcz3.png')
p26.photo.attach(io: file, filename: 'cardigan_kpmcz3.png', content_type: 'image/png')
p26.save!

p27 = Product.create({:name=>"Blouse Florence", :description=>"100#{"%"} coton", :sku=>"00027", price_cents: 2900, old_price_cents: 6200, stock: 1})
p27.category = c5
p27.genre = g2
p27.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690088/blouse_florence_itcnoj.jpg')
p27.cover.attach(io: file, filename: 'blouse_florence_itcnoj.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690143/blouse-florence_5_uzmnrx.jpg')
p27.photo.attach(io: file, filename: 'blouse-florence_5_uzmnrx.jpg', content_type: 'image/jpg')
p27.save!

p28 = Product.create({:name=>"Blouse Florence", :description=>"100#{"%"} coton", :sku=>"00028", price_cents: 2900, old_price_cents: 6200, stock: 1})
p28.category = c5
p28.genre = g2
p28.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690088/blouse_florence_itcnoj.jpg')
p28.cover.attach(io: file, filename: 'blouse_florence_itcnoj.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690143/blouse-florence_5_uzmnrx.jpg')
p28.photo.attach(io: file, filename: 'blouse-florence_5_uzmnrx.jpg', content_type: 'image/jpg')
p28.save!

p29 = Product.create({:name=>"Combinaison en molleton de coton biologique", :description=>"100#{"%"} coton biologique, couleur taupe", :sku=>"00029", price_cents: 2900, old_price_cents: 5900, stock: 1})
p29.category = c2
p29.genre = g3
p29.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738292/combi_papi_taupe.jpg')
p29.cover.attach(io: file, filename: 'combi_papi_taupe.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738393/compi_papi_taupe_3_gtiju9.jpg')
p29.photo.attach(io: file, filename: 'compi_papi_taupe_3_gtiju9.jpg', content_type: 'image/jpg')
p29.save!

p30 = Product.create({:name=>"Combinaison en molleton de coton biologique", :description=>"100#{"%"} coton biologique, couleur moutarde", :sku=>"00030", price_cents: 2900, old_price_cents: 5900, stock: 1})
p30.category = c2
p30.genre = g3
p30.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738292/combi_papi_taupe.jpg')
p30.cover.attach(io: file, filename: 'combi_papi_taupe.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738393/compi_papi_taupe_3_gtiju9.jpg')
p30.photo.attach(io: file, filename: 'compi_papi_taupe_3_gtiju9.jpg', content_type: 'image/jpg')
p30.save!

p31 = Product.create({:name=>"Blouse Roméo en coton biologique", :description=>"100#{"%"} coton biologique ", :sku=>"00031", price_cents: 2200, old_price_cents: 4400, stock: 1})
p31.category = c5
p31.genre = g3
p31.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690338/blouse_romeo_desert.jpg')
p31.cover.attach(io: file, filename: 'blouse_romeo_desert.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690338/blouse_romeo_desert.jpg')
p31.photo.attach(io: file, filename: 'blouse_romeo_desert.jpg', content_type: 'image/jpg')
p31.save!

p32 = Product.create({:name=>"Blouse Roméo en coton biologique", :description=>"100#{"%"} coton biologique ", :sku=>"00032", price_cents: 2200, old_price_cents: 4400, stock: 1})
p32.category = c5
p32.genre = g3
p32.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690338/blouse_romeo_desert.jpg')
p32.cover.attach(io: file, filename: 'blouse_romeo_desert.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590690338/blouse_romeo_desert.jpg')
p32.photo.attach(io: file, filename: 'blouse_romeo_desert.jpg', content_type: 'image/jpg')
p32.save!

p33 = Product.create({:name=>"Short Simon", :description=>"100#{"%"} coton biologique ", :sku=>"00033", price_cents: 1500, old_price_cents: 2400, stock: 1})
p33.category = c3
p33.genre = g3
p33.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738642/short_simon_blue.jpg')
p33.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738628/short_simon_porte.jpg')
p33.photo.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p33.save!

p34 = Product.create({:name=>"Short Simon", :description=>"100#{"%"} coton biologique ", :sku=>"00034", price_cents: 1500, old_price_cents: 2400, stock: 1})
p34.category = c3
p34.genre = g3
p34.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738642/short_simon_blue.jpg')
p34.cover.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590738628/short_simon_porte.jpg')
p34.photo.attach(io: file, filename: 'barboteuse-vichy-ernest_cwayna.jpg', content_type: 'image/jpg')
p34.save!

p35 = Product.create({:name=>"Robe Cléa denim", :description =>"100#{"%"} coton", :sku=>"00035", price_cents: 4900, old_price_cents: 6300, stock: 1})
p35.category = c6
p35.genre = g2
p35.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692410/robe-bebe-clea-denim.jpg')
p35.cover.attach(io: file, filename: 'robe-bebe-clea-denim.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692410/robe-bebe-clea-denim_5.jpg')
p35.photo.attach(io: file, filename: 'robe-bebe-clea-denim_5.jpg', content_type: 'image/jpg')
p35.save!

p36 = Product.create({:name=>"Robe Cléa denim", :description =>"100#{"%"} coton", :sku=>"00036", price_cents: 4900, old_price_cents: 6300, stock: 1})
p36.category = c6
p36.genre = g2
p36.size = s4
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692410/robe-bebe-clea-denim.jpg')
p36.cover.attach(io: file, filename: 'robe-bebe-clea-denim.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692410/robe-bebe-clea-denim_5.jpg')
p36.photo.attach(io: file, filename: 'robe-bebe-clea-denim_5.jpg', content_type: 'image/jpg')
p36.save!

p37 = Product.create({:name=>"Robe Cléa imprimé aquarelle", :description =>"100#{"%"} coton", :sku=>"00037", price_cents: 4900, old_price_cents: 6300, stock: 1})
p37.category = c6
p37.genre = g2
p37.size = s1
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692431/robe-bebe-clea-imprime-aquarelle.jpg')
p37.cover.attach(io: file, filename: 'robe-bebe-clea-imprime-aquarelle.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692431/robe-bebe-clea-imprime-aquarelle_6.jpg')
p37.photo.attach(io: file, filename: 'robe-bebe-clea-imprime-aquarelle_6.jpg', content_type: 'image/jpg')
p37.save!

p38 = Product.create({:name=>"Robe Cléa imprimé aquarelle", :description =>"100#{"%"} coton", :sku=>"00038", price_cents: 4900, old_price_cents: 6300, stock: 1})
p38.category = c6
p38.genre = g2
p38.size = s2
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692431/robe-bebe-clea-imprime-aquarelle.jpg')
p38.cover.attach(io: file, filename: 'robe-bebe-clea-imprime-aquarelle.jpg', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692431/robe-bebe-clea-imprime-aquarelle_6.jpg')
p38.photo.attach(io: file, filename: 'robe-bebe-clea-imprime-aquarelle_6.jpg', content_type: 'image/jpg')
p38.save!

p39 = Product.create({:name=>"Chemise peintre", :description =>"100#{"%"} coton biologique", :sku=>"00039", price_cents: 2500, old_price_cents: 4300, stock: 1})
p39.category = c5
p39.genre = g3
p39.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692463/chemise_peintre_camel_risurisu.png')
p39.cover.attach(io: file, filename: 'chemise_peintre_camel_risurisu.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692463/chemise_peintre_camel_risurisu.png')
p39.photo.attach(io: file, filename: 'chemise_peintre_camel_risurisu.png', content_type: 'image/png')
p39.save!

p40 = Product.create({:name=>"Chemise peintre", :description =>"100#{"%"} coton biologique ", :sku=>"00040", price_cents: 2500, old_price_cents: 4300, stock: 1})
p40.category = c5
p40.genre = g2
p40.size = s3
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692463/chemise_peintre_camel_risurisu.png')
p40.cover.attach(io: file, filename: 'chemise_peintre_camel_risurisu.png', content_type: 'image/png')
file = URI.open('https://res.cloudinary.com/grainedemomes/image/upload/v1590692463/chemise_peintre_camel_risurisu.png')
p40.photo.attach(io: file, filename: 'chemise_peintre_camel_risurisu.png', content_type: 'image/png')
p40.save!

puts "-------"
puts ">>>>>> #{Product.count} products created!"
puts ">>>>>> Done! Seeds achieved"
