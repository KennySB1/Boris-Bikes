require_relative 'bike'
class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    if full?
      raise Exception.new "There's already a bike here"
    else
     @bikes << bike
    end
  end

  def release_bike
    if empty?
      raise Exception.new "There are no bikes left"
    else
      Bike.new
    end
  end

  def show_bikes
    bikes
  end

  private

  def full?
    @bikes.size == 20 ? true : false
  end

  def empty?
    bikes.empty? ? true : false
  end
end
