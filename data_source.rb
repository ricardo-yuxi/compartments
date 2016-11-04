class DS
  attr_accessor :position_number, :sensor, :leds
  def initialize(params = {})
    @position_number = params.fetch(:position_number, position_number)
    @sensor = params.fetch(:sensor, sensor)
    @leds = params.fetch(:leds, leds)
  end
end
