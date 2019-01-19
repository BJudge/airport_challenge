class Airport
  DEFAULT_CAPACITY = 20
  attr_reader :capacity, :hanger
  def initialize(capacity = DEFAULT_CAPACITY)
    @hanger = []
    @capacity = capacity
  end

  def land(plane)
    fail "Airport Full!!" if full?
    @hanger << plane
  end

  def takeoff(plane)
    @hanger.delete(plane)
    "plane #{plane} has now left the airport "
  end

  private
  def full?
    @hanger.count >= @capacity
  end
end
