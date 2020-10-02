category=Category.create(name:"Schools")
category=Category.create(name:"Bands")
category=Category.create(name:"Cities")
category=Category.create(name:"Graphic Tees")
category=Category.create(name:"Sweatshirts")

post=Post.create(title:"Vintage Wesleyan Sweatshirt", image_url:"https://di2ponv0v5otw.cloudfront.net/posts/2019/12/20/5dfd257f21696884d74e9704/m_5dfd25db2eb33f370b6f1d26.jpg",
description: "Lightly used, vintage 90's Wes crewneck with faded color.",size:"L",price: 35,likes:0,availability: "For Sale",category_id:1)

post=Post.create(title:"Queen Graphic Tee", image_url:"https://di2ponv0v5otw.cloudfront.net/posts/2020/06/11/5ee2936809d76042e6afb789/m_5ee293bf284e999c4e5a0c3d.jpg",
    description: "Vintage Queen band tee.",size:"S",price: 20,likes:0,availability: "For Sale",category_id:2)

post=Post.create(title:"Lana Del Rey UO Exclusive Album Tee", image_url:"https://s7d5.scene7.com/is/image/UrbanOutfitters/57242067_012_b?$xlarge$&fit=constrain&qlt=80&wid=683",
description: "Lana Del Rey tee with a sepia-tone iteration of her “Norman F***ing Rockwell” album cover printed at the front.",size:"L",price: 32,likes:0,availability: "For Sale",category_id:2)

post=Post.create(title:"Harry Potter Hogwarts Crew Neck Sweatshirt", image_url:"https://s7d5.scene7.com/is/image/UrbanOutfitters/58568312_071_b?$xlarge$=&fit=constrain&fmt=webp&qlt=80&wid=1366",
description: "Collegiate style sweatshirt featuring your fav school of witchcraft and wizardry. Pullover silhouette is cut in a relaxed fit with a rib-knit trim and Hogwarts text arched atop the school crest printed at the chest.",
size:"M",price: 40,likes:0,availability: "For Sale",category_id:1)


comment=Comment.create(username:"annoyingcommenter", comment_text: "Does this have any stains or holes?", post_id:1)
comment=Comment.create(username:"johnsmith", comment_text: "Love this", post_id:3)
comment=Comment.create(username:"anon2", comment_text: "What are the measurements here?", post_id:3)
comment=Comment.create(username:"buyingvintage3", comment_text: "Will you go lower on this?", post_id:3)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
