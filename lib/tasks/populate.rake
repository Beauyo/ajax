namespace :populate do
  desc "Populate Games"
  task games: :environment do
    20.times do 
      game = Game.create(name: Faker::Games::Zelda.name, description: Faker::Games::Zelda.item)
      5.times { Character.create(name: Faker::Zelda.character, power: Faker::Superhero.power, game_id: game.id) }
    end
  end

end
