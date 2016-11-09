require 'awesome_print'
require_relative 'compartment'
require_relative 'door'

compartment = Compartment.new(
  position_number: 10,
  door: Door.new)
p compartment
position = compartment.position_number
p compartment.door.open_door(position)
p compartment.door.close_door(position)
