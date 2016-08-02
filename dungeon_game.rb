class Dungeon
	attr_accessor :player 
	# equivalent to writing out a player method where you can write and read it, see below
	#
	# def player
	# 	@player
	# end
	# 
	# def player=(player)
	# 	@player = player
	# end

	def initialize(player_name)
		@player = Player.new(player_name)
		@rooms = []
	end

	def add_room(reference, name, description, connections)
		@rooms << Room.new(reference, name, description, connections)
	end

	def start(location)
		@player.location = location
		show_current_description
	end

	def show_current_description
		puts find_room_in_dungeon(@player.location).full_description
	end

	def find_room_in_dungeon(reference)
		@rooms.detect { |room| room.reference == reference }
	end

	def go(direction)
		puts "You go " + direction.to_s
		@player.location = find_room_in_direction(direction)
		show_current_description
	end

	class Room
		attr_accessor :reference, :name, :description, :connections

		def intialize(reference, name, description, connections)
			@reference = reference
			@name = name
			@description = description
			@connections = connections
		end

		def full_description
			@name + "\n\nYou are in " + @description
		end
	end

	Player = Struct.new(:name, :location) #better to write it this way because these classes were originally only holding data, not
	#Room = Struct.new(:reference, :name, :description, :connections) #logic or data. Also shorter and more succinct
end

jd_dungeon = Dungeon.new("JD")

jd_dungeon.add_room(:hallway, "The hallway", "A long dark hallway lies before you", {:east => :largeroom})
jd_dungeon.add_room(:largeroom, "A large room", "You enter a large dark room connecting to two other rooms, east and north", {:east => skeletal_room:, :north => :void_room})
jd_dungeon.add_room(:skeletal_room, "The Skeletal Room", "You enter a room full of skeletans, scary!", {:west => largeroom:})
jd_dungeon.add_room(:north, "The Void Room", "You enter a room with a black void staring right back at you...", {:south => :largeroom})

jd_dungeon.start(:hallway)










