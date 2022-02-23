require_relative 'bike'
class DockingStation
  attr_accessor :bikes
  attr_reader :DEFAULT_CAPACITY

  def initialize(capacity = 20)
    @bikes = []
    @DEFAULT_CAPACITY = capacity
  end

  def dock_bike(bike, working = true)

    if full?
      raise Exception.new "There's already a bike here"
    else
     @bikes << [bike, working]
    end
  end

  def release_bike
    if empty?
      raise Exception.new "There are no bikes left"
    else
      @bikes.each do |bike|
      if bike[1] == true
        return @bikes.pop
      end
    end
    end
  end

  def show_bikes
    bikes
  end

  private

  def full?
    @bikes.size == @DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end
end
