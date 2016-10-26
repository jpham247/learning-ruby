# serialize.rb References for Serialization using Marshal, JSON, YAML modules

### Marshal ###
# Marshal is capable of writing out any data object in Ruby into a data stream. 
# An Optional data stream (IO object) can be passed in as the stream destination, but it outputs 
# the data stream to a string as default.

# Marshal is part of the ruby language classes by default and thus does not need to be 'required'

class Player
  attr_accessor :name, :progress

  def initialize(name)
    @name = name
  end

end

player = Player.new("Jason")
player.progress = 60

# Marshal Output
player_out = Marshal.dump(player)

puts player_out.inspect

# Marshal Input
player_in = Marshal.load(player_out)

puts player_in.inspect


### JSON ###
require 'json'
# Text-Based Serialization method thats human readable, popular from JavaScript


json_string = '{"name":"Jonathan","location":"Home","status":"alone"}'
json_obj1 = JSON.parse(json_string)
puts json_obj1.inspect

test_hash = {name: "Jonathan",superpower: "Time Manipulation",status: "Amazing"}
json_obj2 = JSON.dump(test_hash)
puts json_obj2.inspect

reconstituted_hash = JSON.parse(json_obj2)
puts reconstituted_hash.inspect

### YAML ###
require 'yaml'
puts "-"*20 + "Testing YAML" + "-"*20 
# Text-Based Serialization method thats human readable, Ruby Popular/Traditional choice
test_hash = {name: "Jonathan",superpower: "Time Manipulation",status: "Amazing"}
yaml_obj1 = YAML.dump(test_hash)
puts yaml_obj1.inspect

reconstituted_hash2 = YAML.load(yaml_obj1)
puts reconstituted_hash2.inspect

yaml_obj2 = YAML.load_file("file.yml")
puts yaml_obj2.inspect

### BASE64 ###
# Base64 is used to serialize data from binary data to strings 

require 'base64'

message_to_encode = "Welcome to Base64 Encoding."
encoded_message = Base64.encode64(message_to_encode)
puts Base64.decode64(encoded_message)

