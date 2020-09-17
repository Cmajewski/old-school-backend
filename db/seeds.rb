category=Category.create(name:"College")

post=Post.create(title:"Vintage Wesleyan Sweatshirt", image_url:"https://di2ponv0v5otw.cloudfront.net/posts/2019/12/20/5dfd257f21696884d74e9704/m_5dfd25db2eb33f370b6f1d26.jpg",
description: "Lightly used, vintage 90's Wes crewneck with faded color.",size:"L",price: 35,likes:0,availability: "For Sale",category_id:1)


comment=Comment.create(username:"annoyingcommenter", comment_text: "Does this have any stains or holes?", post_id:1)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
