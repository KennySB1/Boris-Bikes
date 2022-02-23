require_relative 'dockingstation'
require_relative 'garage'
class Van

  attr_reader :van_bikes

  def initialize
    @van_bikes = []
  end

  def take_broken_bikes(dockingstation)
    dockingstation.bikes.each do |bike|
      if bike[1] == false
        @van_bikes << [bike[0], bike[1]]
      end
    end
  end

  def deliver_broken_bikes(garage)
    @van_bikes.each do |bike|
      if bike[1] == false
        garage.garage_bikes << [bike[0], bike[1]]
      end
    end
  end

  def take_repaired_bikes(garage)
    garage.garage_bikes.each do |bike|
      if bike[1] == true
        @van_bikes << [bike[0], bike[1]]
      end
    end
  end

  def deliver_repaired_bikes(dockingstation)
    @van_bikes.each do |bike|
      if bike[1] == true
        dockingstation.bikes << [bike[0], bike[1]]
      end
    end
  end

end
