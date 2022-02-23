require_relative 'bike'
class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    if bikes.size == 20
      raise Exception.new "There's already a bike here"
    else
     @bikes << bike
    end
  end

  def release_bike
    if @bikes.empty?
      raise Exception.new "There are no bikes left"
    else
      Bike.new
    end
  end

  def show_bikes
    bikes
  end
end
