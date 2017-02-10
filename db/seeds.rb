# 5.times do |billboard|
#   Billboard.create(name: Faker::HarryPotter.location)
# end



# 5.times do |song|
#   Song.create(title: Faker::HarryPotter.character, album: Faker::HarryPotter.quote, artist_id: Artist.first.id, billboard_id: Billboard.first.id)
# end

Billboard.all.each do |billboard|
  20.times do |artist|
    Artist.create(name: Faker::GameOfThrones.character, album: Faker::GameOfThrones.house, billboard_id: billboard.id)
  end
  Artist.all.each do |artist|
    2.times do |something|
      Song.create(title: Faker::HarryPotter.character, album: Faker::HarryPotter.quote, artist_id: artist.id, billboard_id: billboard.id)
    end
  end
end



puts "billboard, artists and songs have been seeded"