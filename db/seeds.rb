# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  User.create(
    username:     Faker::Internet.user_name, 
    firstname:    Faker::Name.first_name, 
    lastname:     Faker::Name.last_name,
    email:        Faker::Internet.email,
    password:     "password"
    )
end

20.times do
  post = Post.create(
    title:        Faker::Lorem.sentence,
    content:      Faker::Lorem.paragraphs.join(""),
    user_id:      rand(10)+1
    )

 # post.pvotes << Pvote.create
end

80.times do 
  comment = Comment.create(
    text:         Faker::Lorem.paragraphs.join(""),
    user_id:      rand(10)+1,
    post_id:      rand(20)+1,
    )  

  # comment.cvotes << Cvote.create   
end
