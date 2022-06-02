# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  email: "escobar@gmail.com", 
  password: "123456", 
  password_confirmation: "123456",
  name: "escobar",
  role: User.roles[:admin])

User.create(
  email: "johndoe@gmail.com", 
  password: "123456", 
  password_confirmation: "123456",
  name: "johndoe",
  role: User.roles[:user])

5.times do |x|
  post = Post.create(title: "Title #{x + 1}", body: "Body #{x + 1} Words goes here", user_id: User.first.id)

  5.times do |y|
    Comment.create(body: "Comment #{y + 1}", user_id: User.second.id, post_id: post.id)
  end
end
