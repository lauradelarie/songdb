# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.delete_all
Artist.delete_all


maria = Artist.create(name:"Maria Mena", bio:"Maria Viktoria Mena (born 19 February 1986) is a Norwegian pop artist, best known for her single \"Youre the Only One\" which charted in multiple countries.", origin:"Norway")
selah = Artist.create(name:"Selah Sue", bio:)
