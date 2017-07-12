require 'random_data'

# Create Posts
50.times do 
  Post.create!(
    title:    RandomData.random_sentence,
    body:     RandomData.random_paragraph
  )
end

# Create Comments
100.times do 
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

# Create Advertisements
10.times do 
  Advertisement.create!(
    title:    RandomData.random_sentence,
    body:     RandomData.random_paragraph,
    price:    rand(25..400)
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"