require_relative 'plane'
require_relative 'weather'

class Airport
  DEFAULT_CAPACITY = 20
  BAD_WEATHER = 1
  attr_reader :capacity, :hanger
  def initialize(capacity = DEFAULT_CAPACITY)
    @hanger = []
    @capacity = capacity
  end

  def land(plane)
    fail "Cannot Land Weather Too Stormy" if stormy?
    fail "Airport Full!!" if full?
    @hanger << plane
  end

  def takeoff(plane)
    fail "Cannot Takeoff Weather Too Stormy" if stormy?
    @hanger.delete(plane)
    "plane #{plane} has now left the airport "
  end

  private
  def full?
    @hanger.count >= @capacity
  end

  def stormy?
    weather = Weather.new
    weather.weather_condition == BAD_WEATHER
  end
end
