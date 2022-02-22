require_relative 'bike'
class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
    @bikes << bike
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
