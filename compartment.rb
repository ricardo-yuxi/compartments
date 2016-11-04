require_relative 'data_source'

class Compartment
  def initialize(compartment_id, data_source)
    @id = compartment_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_number")
    serial = @data_source.send("get_#{name}_number", @id)
    position = @data_source.send("get_#{name}_number", @id)
    leds = @data_source.send("get_#{name}_number", @id)
    result = "#{name.capitalize}: #{serial} #{position} #{leds}"
  end
end

my_compartment = Compartment.new(11, DS.new)
puts my_compartment.serial

cmp = Compartment.new(1, DS.new)
puts cmp.respond_to?(:serial)


#module Compartment

  #def open_door
    #puts "Open door!"
  #end

  #def close_door
    #puts "Close door!"
  #end
#end

class StandardCompartment
  include Compartment

  attr_accessor :serial, :position_number, :sensor, :leds
  def initialize()
    @config = StandardCompartment.config_from_template
  end

  def self.config_from_template
    file = File.read 'config.json'
    JSON.load(file, nil, symobolize_names: true)
  end
end

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
