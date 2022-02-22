require 'dockingstation'
describe DockingStation do
  it 'releases bikes' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'stores a bike in the docking station' do
    bike = Bike.new
    subject.dock_bike(bike)
    result = subject.bikes
    expect(result).to eq([bike])
  end
  it 'returns the array of docked bikes' do
    result = subject.show_bikes
    expect(result).to be_an_instance_of(Array)
  end
  end

