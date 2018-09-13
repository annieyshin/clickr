# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Photo.destroy_all
Comment.destroy_all
User.destroy_all

User.create!(email: 'jadeanomaly@yahoo.com', password: 'password', admin: true)
User.create!(email: 'eshulldesign@gmail.com', password: 'password', admin: true)

10.times do |index|
  User.create!(email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
    # avatar_file_name: ("50x60"),
    # avatar_content_type: ("50x60"),
    # avatar_file_size: ("50x60"),
    )
end

# 30.times do |index|
#   Photo.create!(title: Faker::Name.name,
#     user_id: Faker::Number.between(1, 10),
#     image: Faker::LoremFlickr.image_file_name)
#     # image: Faker::LoremFlickr.unique.image_file_name)
# end

Photo.all.each do |photo|
    20.times do |index|
      photo.comments.create!(content: Faker::Lorem.sentence(5),
      user_id: Faker::Number.between(1, 10),
      # user_id: Faker::Number.between(1, 30),
      photo_id: Photo.all.shuffle[0].id)
  end
end


# p "Created #{Photo.count} questions"
# p "Created #{Comment.count} answers"
