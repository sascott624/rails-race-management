# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

runners = Runner.create([{name: "Speedy", email: "sofly@runners.com", password: "theflash"},
   {name: "Barty", email: "barty@slowpoke.com", password: "snail234"},
   {name: "Princess Peach", email: "iheart@mario.com", password: "supermar10"}])

races = Race.create([{title: "The Great Pyramids", location: "Egypt", difficulty: 5},
  {title: "Swan Lake", location: "Vienna", difficulty: 3},
  {title: "Dungeon Doom", location: "Bowser's Castle", difficulty: 4},
  {title: "The Hurricane", location: "Miami", difficulty: 2},])

awards = Award.create([{type: 3, runner_id: 2, race_id: 2},
  {type: 1, runner_id: 3, race_id: 3},])
