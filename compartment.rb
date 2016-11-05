require_relative 'data_source'

class Compartment
  DATA = {position_number: 10, sensor: 116542, leds: 126522}

  attr_reader :data
  def initialize
    @data = DATA
  end

  def to_s
    "#{@data}"
  end
end

puts Compartment.new

#module Compartment

  #def open_door
    #puts "Open door!"
  #end

  #def close_door
    #puts "Close door!"
  #end
#end

#class StandardCompartment
  #include Compartment

  #attr_accessor :serial, :position_number, :sensor, :leds
  #def initialize()
  #end
#end

#class GarageCompartment
  #include Compartment
#end

#class GearCompartment
  #include Compartment
#end

#class HelixCompartment
  #include Compartment
#end


#sc = StandardCompartment.new
#sc.open_door

#puts StandardCompartment.ancestors.inspect
