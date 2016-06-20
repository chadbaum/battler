# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'chadbaum@gmail.com', password: 'monkeys')
User.create(email: 'moomoo@moo.com', password: 'monkeys')
User.first.build_character(name: 'Silvaire', gender: 'male').save
User.last.build_character(name: 'Persata', gender: 'male').save


Item.create(name: 'Potion', type: 'Consumable').save
CharacterItem.create(character_id: 1, item_id: 1, quantity: 9)
CharacterItem.create(character_id: 2, item_id: 1, quantity: 9)

Item.create(name: 'Eye Drops', type: 'Consumable').save
CharacterItem.create(character_id: 1, item_id: 2, quantity: 4)
CharacterItem.create(character_id: 2, item_id: 2, quantity: 4)

Item.create(name: 'Antidote', type: 'Consumable').save
CharacterItem.create(character_id: 1, item_id: 3, quantity: 10)
CharacterItem.create(character_id: 2, item_id: 3, quantity: 10)

Item.create(name: 'Rusty Knife', type: 'Weapon').save
CharacterItem.create(character_id: 1, item_id: 4, quantity: 1, equipped: true, slot: 'right')
CharacterItem.create(character_id: 2, item_id: 4, quantity: 1, equipped: true, slot: 'right')

Job.create(name: 'Adventurer', alias: 'ADV')
Job.create(name: 'Squire', alias: 'SQR')
Job.create(name: 'Knight', alias: 'KNT')
Job.create(name: 'Thief', alias: 'THF')
Job.create(name: 'Monk', alias: 'MNK')
Job.create(name: 'White Mage', alias: 'WHM')
Job.create(name: 'Black Mage', alias: 'BLM')

CharacterJob.create(character_id: 1, job_id: 1, active: true)
CharacterJob.create(character_id: 2, job_id: 1, active: true)
CharacterJob.create(character_id: 2, job_id: 3, level: 3)
CharacterJob.create(character_id: 1, job_id: 5, level: 2)
