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

v1 = PlaylistSong.create(song:s1 , playlist:p1 )



# rm = RestClient.get "https://deezerdevs-deezer.p.rapidapi.com&api_key=8384d17005mshf5e19b1581270a5p14f6bdjsn356be895ec06"

# rm_array = JSON.parse(rm)[“results”]
#     rm_array.each do |character|
#         Song.create(
#         title: song[“title”],
#         artist: song[“artist”],
#         album: song[“album”],
#         duration: song[“duration”]
#         )
#        end

