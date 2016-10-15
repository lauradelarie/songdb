# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.delete_all
Artist.delete_all


maria = Artist.create(name:"Maria Mena", bio:"Maria Viktoria Mena (born 19 February 1986) is a Norwegian pop artist, best known for her single \"You\'re the Only One\" which charted in multiple countries.", origin:"Norway", image:"http://res.cloudinary.com/dsiyhc1tt/image/upload/v1476521204/Maria_Mena__193413_uyooam.jpg")
selah = Artist.create(name:"Selah Sue", bio:"Selah Sue (born Sanne Greet A. Putseys,[1][2] 3 May 1989) is a Belgian musician and songwriter. Her debut album, Selah Sue (2011) was a major success, selling over 720,000 copies in Europe,[3][4][5] 320,000 in France alone. In 2011, she has had chart success with the hit singles \"Raggamuffin\", \"Crazy Vibes\" and \"This World\". In 2011, Selah Sue won an European Border Breakers Award (EBBA).[6] In January 2012 during the EBBA award ceremony she was presented with the EBBA Public Choice Award.[7]", origin: "Belgium", image:"http://res.cloudinary.com/dsiyhc1tt/image/upload/v1476521204/800px-SelahSue_0_rykdpq.jpg")
lissie = Artist.create(name:"Lissie", bio:"Elisabeth Corrin Maurus (born November 21, 1982),[3] known as Lissie, is an American singer-songwriter. She released her debut EP, \"Why You Runnin\'\", in November 2009. Her debut album, Catching a Tiger, was released in June 2010.", image: "http://res.cloudinary.com/dsiyhc1tt/image/upload/v1476521204/Lissie_live_at_Odder%C3%B8ya_Live_2013_xrqmss.jpg")


song1 = Song.create(title:"Homeless", album:"Viktoria", year:2010, artist: maria)
song2 = Song.create(title:"Secrets", album:"Viktoria", year:2010, artist: maria)
song3 = Song.create(title:"Takes one to know one", album:"Viktoria", year:2010, artist: maria)


song4 = Song.create(title:"Peace of Mind", album:"Selah Sue", year:2012, artist: selah)
song5 = Song.create(title:"Won't go for more", album:"Reason", year:2015, artist: selah)
song6 = Song.create(title:"Crazy Vibes", album:"Selah Sue", year:2012, artist: selah)

song7 = Song.create(title:"When I'm alone", album:"Catching a tiger", year:2010, artist: lissie)
song8 = Song.create(title:"In Sleep", album:"Catching a tiger", year:2010, artist: lissie)
song9 = Song.create(title:"Hero", album:"My wild west", year:2016, artist: lissie)
