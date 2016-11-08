require 'awesome_print'

class Compartment

  attr_reader :position_number, :sensors, :indicators, :door
  def initialize(args={})
    @position_number = args[:position_number] || default_position
    @sensors = args[:sensor] || default_sensors
    @indicators = args[:indicators] || default_indicators
    @door = args[:door]
  end

  def default_position
    10
  end

  def default_sensors
    {
      analog: {
        type: "floor_sensor",
        identifier: 116542,
        positions: [0]
      },
      digital: {
        type: "door_sensor",
        identifier: 116542,
        positions: [
          4
        ]
      }
    }
  end

  def default_indicators
    {
      type: "led",
      identifier: 116542,
      positions: [
        3
      ]
    }
  end
end

class Door

  attr_reader :back_door, :front_door
  def initialize(args={})
    @back_door = args[:back_door] || default_back_door
    @front_door = args[:front_door] || default_front_door
  end

  def default_back_door
    {
      type: "dc_motorize",
      identifier: 116542,
      positions: [
        4
      ]
    }
  end

  def default_front_door
    {
      type: "garage",
      identifier: 116542,
      positions: [
        0,
        1
      ]
    }
  end

  def open_door(position)
    puts "Open Door for position #{position}"
  end

  def close_door(position)
    puts "Close Door for position #{position}"
  end
end

compartment = Compartment.new(
  position_number: 10,
  door: Door.new)
p compartment
position = compartment.position_number
p compartment.door.open_door(position)
p compartment.door.close_door(position)
