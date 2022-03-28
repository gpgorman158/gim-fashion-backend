puts "🌱 Seeding Users..."

gerald = User.create(username: "gpgorman", name: "Gerald", password: "helloworld")
iba = User.create(username: "ibamischief", name: "Iba", password: "goodbyeworld")
miguel = User.create(username: "miglovin", name: "Miguel", password: "world")

puts "🌱 Seeding Cloths..."

cloth1 = Cloth.create(category:"Sweaters", name: "", price: , image: "", brand: "")
cloth2 = Cloth.create(category:"Pants", name: "", price: , image: "", brand: "")
cloth3 = Cloth.create(category:"Sneakers", name: "", price: , image: "", brand: "")

puts "🌱 Seeding Items..."

Item.create(user_id: gerald.id, cloth_id: cloth2.id)
Item.create(user_id: iba.id, cloth_id: cloth3.id)
Item.create(user_id: miguel.id, cloth_id: cloth1.id)

puts "✅ Done seeding!"
