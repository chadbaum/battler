# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Job.create(name: 'Squire', alias: 'SQR')
Job.create(name: 'Knight', alias: 'KNT')
Job.create(name: 'Thief', alias: 'THF')
Job.create(name: 'Monk', alias: 'MNK')
Job.create(name: 'White Mage', alias: 'WHM')
Job.create(name: 'Black Mage', alias: 'BLM')

User.create(email: 'chadbaum@gmail.com', password: 'monkeys')

User.first.build_character(name: 'Silvaire', gender: 'male').save
