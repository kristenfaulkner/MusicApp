User.delete_all
Band.delete_all
Album.delete_all
Track.delete_all


#Users
User.create!(email: 'u1@email', password: "111111")
User.create!(email: 'u2@email', password: "222222")
User.create!(email: 'u3@email', password: "333333",)
User.create!(email: 'u4@email', password: "444444")
User.create!(email: 'u5@email', password: "555555")

#Bands
Band.create!(name: 'Beatles', image: "http://cdn.cnwimg.com/wp-content/uploads/2010/01/original.jpg")
Band.create!(name: 'Backstreet Boys', image: "http://images4.alphacoders.com/247/247744.jpg")
Band.create!(name: 'Taylor Swift', image: "http://www.mtv.com/crop-images/2013/09/04/Ray%20Charles%20GI.jpg")
Band.create!(name: 'Bob Marley', image: "http://cdn02.cdn.justjaredjr.com/wp-content/uploads/headlines/2012/08/taylor-swift-red-album.jpg")
Band.create!(name: 'The Fray', image: "http://www.disneydreaming.com/wp-content/uploads/2010/11/Justin-Bieber-My-World.jpg")
Band.create!(name: 'Santana', image: "http://ecx.images-amazon.com/images/I/51sXPRD1kPL._SY300_.jpg")
Band.create!(name: 'Ray Charles', image: "http://img1.wikia.nocookie.net/__cb20110410191050/ladygaga/images/7/75/TheFame.jpg")
Band.create!(name: 'Teh Veronicas', image: "http://soundonmars.files.wordpress.com/2010/09/beyepic.jpg")
Band.create!(name: 'Lady Gaga', image: "http://groundctrl.s3.amazonaws.com/clients/groundctrl/media/03/01/large.2st3t71n944c.jpg")
Band.create!(name: 'Usher', image: "http://www.clarksonfan.com/img/A_Kelly_Clarkson_Breakalores.jpg")


#Albums
a1 = Album.create!(name: 'a1', year: 2000, band_id: 1, live_or_studio: "studio",
                  image: "http://cdn.cnwimg.com/wp-content/uploads/2010/01/original.jpg")
a2 = Album.create!(name: 'a2', year: 2000, band_id: 1, live_or_studio: "live",
                  image: "http://images4.alphacoders.com/247/247744.jpg")
a3 = Album.create!(name: 'a3', year: 2000, band_id: 2, live_or_studio: "studio",
                  image: "http://www.mtv.com/crop-images/2013/09/04/Ray%20Charles%20GI.jpg")                  
a4 = Album.create!(name: 'a4', year: 2000, band_id: 2, live_or_studio: "live",
                  image: "http://cdn02.cdn.justjaredjr.com/wp-content/uploads/headlines/2012/08/taylor-swift-red-album.jpg")
a5 = Album.create!(name: 'a5', year: 2000, band_id: 3, live_or_studio: "studio",
                  image: "http://www.disneydreaming.com/wp-content/uploads/2010/11/Justin-Bieber-My-World.jpg")
a6 = Album.create!(name: 'a6', year: 2000, band_id: 3, live_or_studio: "live",
                  image: "http://ecx.images-amazon.com/images/I/51sXPRD1kPL._SY300_.jpg")
a7 = Album.create!(name: 'a7', year: 2000, band_id: 4, live_or_studio: "studio",
                  image: "http://img1.wikia.nocookie.net/__cb20110410191050/ladygaga/images/7/75/TheFame.jpg")
a8 = Album.create!(name: 'a8', year: 2000, band_id: 4, live_or_studio: "live",
                  image: "http://soundonmars.files.wordpress.com/2010/09/beyepic.jpg")
a9 = Album.create!(name: 'a9', year: 2000, band_id: 5, live_or_studio: "studio",
                  image: "http://groundctrl.s3.amazonaws.com/clients/groundctrl/media/03/01/large.2st3t71n944c.jpg")
a10 = Album.create!(name: 'a10', year: 2000, band_id: 5, live_or_studio: "live",
                  image: "http://www.clarksonfan.com/img/A_Kelly_Clarkson_Breakalores.jpg")


#Tracks
t1 = Track.create!(name: 't1', album_id: 1, bonus_or_regular: 'regular')
t2 = Track.create!(name: 't2', album_id: 1, bonus_or_regular: 'bonus')
t3 = Track.create!(name: 't3', album_id: 2, bonus_or_regular: 'regular')
t4 = Track.create!(name: 't4', album_id: 2, bonus_or_regular: 'bonus')
t5 = Track.create!(name: 't5', album_id: 3, bonus_or_regular: 'regular')
t6 = Track.create!(name: 't6', album_id: 3, bonus_or_regular: 'bonus')
t7 = Track.create!(name: 't7', album_id: 4, bonus_or_regular: 'regular')
t8 = Track.create!(name: 't8', album_id: 4, bonus_or_regular: 'bonus')
t9 = Track.create!(name: 't9', album_id: 5, bonus_or_regular: 'regular')
t10 = Track.create!(name: 't10', album_id: 6, bonus_or_regular: 'regular')
t11 = Track.create!(name: 't11', album_id: 7, bonus_or_regular: 'regular')
t12 = Track.create!(name: 't12', album_id: 8, bonus_or_regular: 'regular')
t13 = Track.create!(name: 't13', album_id: 9, bonus_or_regular: 'regular')
t14 = Track.create!(name: 't14', album_id: 10, bonus_or_regular: 'regular')