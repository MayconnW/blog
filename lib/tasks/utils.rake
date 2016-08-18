namespace :utils do
  
  desc "Load all data for tests"
  
  task seed: :environment do
    puts "Load Users"
      10.times do |i|
        p = Faker::Internet.password
        User.create!(
          name: Faker::Name.name,
          password_digest: p,
          password_confirmation: p
          )
      end
    puts "Finished load users"
    
    puts "Load posts"
      50.times do |i|
        Post.create!(
          title: i.to_s+" - "+Faker::Lorem.sentence([3,4,5].sample),
          description: Faker::Lorem.paragraph([1,2,3,4,5].sample),
          user: User.all.sample,
          img_path: Faker::Avatar.image
          )
      end
    puts "Finished load posts"
  end

end
