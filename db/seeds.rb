# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first_names = %w(Jeff Katrina Jorge Rachel Susannah Josh).shuffle
last_names = %w(Casimir Owen Tellez Warbelow Compton Cheek).shuffle

first_names.zip(last_names).each do |first_name, last_name|
  Person.create!(:first_name => first_name, :last_name => last_name)
end
