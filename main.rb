require "./lib/heroes_per_player"

p "Welcome to the Superheroe game!"

p "How many cards for each player? (Maximum: 30)"
heroes_per_player = HeroesPerPlayer.new(gets.chomp)

puts heroes_per_player.number