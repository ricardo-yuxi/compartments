require 'awesome_print'
require 'yaml'

class Compartment

  attr_reader :doors, :indicators
  def initialize(options)
    @doors = options[:doors]
    @indicators = options[:indicators]
    begin
      @data = YAML.load(File.read(options[:data_file]))
    rescue
      raise "Can't load bot data"
    end
  end

end
