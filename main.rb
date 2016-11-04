require 'ap'
require_relative 'data_source'

ds = DS.new(:position_number => 10, :sensor => 116542, :leds=> 126522)

ap ds
