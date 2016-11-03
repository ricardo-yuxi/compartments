class DS
  #attr_accessor :serial, :position_number, :sensor, :leds
  def initialize
   #@serial = args[0]
   #@position_number = args[1]
   #@sensor = args[2]
   #@leds = args[3]
  end

  def get_serial_number(compartment_id)
    116542
  end


  def get_position_number(compartment_id)
    10
  end

  def get_leds_number(compartment_id)
    [0,1]
  end
end
