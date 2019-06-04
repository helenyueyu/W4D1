# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 

  User.destroy_all 
  Artwork.destroy_all 
  ArtworkShare.destroy_all 

  u1 = User.create(user_name: 'papajohns')
  u2 = User.create(user_name: 'pizzahut')
  u3 = User.create(user_name: 'colonelsanders')

  a1 = Artwork.create(title: 'Scream', artist_id: u1.id, image_url: 'google.com')
  a2 = Artwork.create(title: 'The Last Supper', artist_id: u1.id, image_url: 'google.com')
  a3 = Artwork.create(title: 'American Gothic', artist_id: u3.id, image_url: 'google.com')

  as1 = ArtworkShare.create(artwork_id: a1.id, viewer_id: u2.id)
  as2 = ArtworkShare.create(artwork_id: a2.id, viewer_id: u3.id)
  as3 = ArtworkShare.create(artwork_id: a3.id, viewer_id: u1.id)
  
end