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
