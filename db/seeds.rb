# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PlaylistSong.destroy_all
Playlist.destroy_all
Song.destroy_all
User.destroy_all

u1 = User.create(name:"Dummy", username:"Dummy1")

p1 = Playlist.create(name: "Workout", user: u1)

s1 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
s2 = Song.create(title: "Better", artist: "Khalid", album:"Better", duration: 3.49 )
s3 = Song.create(title: "Lose You To Love Me", artist: "Selena Gomez", album:"Rare", duration: 3.08)
s4 = Song.create(title: "Circles", artist: "Post Malone", album:"Hollywood's Bleeding", duration: 3.35)
s5 = Song.create(title: "Good as Hell", artist: "Lizzo", album:"Coconut Oil", duration: 2.39)
s6 = Song.create(title: "Don't Start Now", artist: "Dua Lipa", album:"Don't Start Now", duration: 3.03)
s7 = Song.create(title: "Panini", artist: "Lil Nas X", album:"7 EP", duration: 1.54)
s8 = Song.create(title: "Yummy", artist: "Justin Bieber", album:"Yummy", duration: 3.30)
s9 = Song.create(title: "Hot girl bummmer", artist: "Blackbear", album:"hot girl bummer", duration: 3.05)
s9 = Song.create(title: "Adore You", artist: "Harry Styles", album:"Adore You", duration: 3.27)
s10 = Song.create(title: "Truth Hurts", artist: "Lizzo", album:"Truth Hurts", duration:2.53)
# s11 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s12 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s13 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s14 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s15 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s16 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s17 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s18 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s19 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s20 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s21 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s22 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s23 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s24 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s25 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s26 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s27 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s28 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s29 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)
# s30 = Song.create(title: "Shimmy Shimmy Ya", artist: "Dirty OL Bastard", album:"THATALBUM", duration: 3.13)

v1 = PlaylistSong.create(song:s1 , playlist:p1 )


