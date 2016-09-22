# Music Shop (Nested Data Structure)
# 1. The shop itself contains:
#   a. The Retail Department:
#     i. Guitar Room
#       -Gibson SG
#       -Martin D-18
#       -Guitar Picks
#    ii. Percussion Room
#       -Pearl Rock Kit
#       -Bongos
#       -Electronic Kit
#       -Drumsticks
#   iii. A/V Room
#       -Mixers
#       -Microphones
#       -MIDI Keyboards
#   b. The Education Department:
#     i. Private Studios
#       -Studio A
#       -Studio B
#       -Studio C
#    ii. Recording Studio
#       -Mixers
#       -Microphones
#       -Recording Software
#   iii. Group Rehearsal Space
#       -Microphones
#       -Stage

music_shop = {
	retail: {
		guitar_room: [
			"Gibson SG",
			"Martin D-18",
			accessories = {
				picks:[
					"green",
					"blue",
					"red"
					],
				strings:[
					"Martin",
					"Elixer",
					"D'Addario"
				]
			}
		],
		percussion_room:[
			"Pearl Rock Kit",
			"bongos",
			"Electronic Kit",
			"drumsticks"
			],
		av_room:[
			"mixers",
			"microphones",
			"MIDI keyboards",
			],
	},

	education: {
		private_studios:[
			"Studio A",
			"Studio B",
			"Studio C"
			],
		recording_studio:[
			"mixers",
			"microphones",
			"recording software"
			],
		rehearsal_space:[
			"microphones",
			"stage",
			"audience_seating"
			],

	}
}

# Returns "recording software"
puts music_shop[:education][:recording_studio][2]
# Returns "Studio B"
puts music_shop[:education][:private_studios][1]
# Returns "Martin"
puts music_shop[:retail][:guitar_room][2][:strings][0]









