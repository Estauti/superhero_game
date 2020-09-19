require "./lib/heroes_per_player"
require "./lib/heroes_slicer"

p "Welcome to the Superheroe game!"

p "How many cards for each player? (Maximum: 30)"
heroes_per_player = HeroesPerPlayer.new(gets.chomp)

heroes_slicer = HeroesSlicer.new(heroes_per_player.number)

player = heroes_slicer.slice
player_machine = heroes_slicer.slice

p player
p player_machine