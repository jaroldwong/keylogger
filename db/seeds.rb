# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Department.create(name: 'Economics')
Department.create(name: 'History')
Department.create(name: 'Philosophy')
Department.create(name: 'Political Science')
Department.create(name: 'Sociology')

Location.create(building: 'SSH', room: '130')
Location.create(building: 'SSH', room: '131')
