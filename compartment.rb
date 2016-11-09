require 'awesome_print'
require_relative 'door'

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
