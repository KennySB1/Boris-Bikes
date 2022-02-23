require 'dockingstation'
describe DockingStation do
  let(:bike) {Bike.new}
  let(:dockingstation) {DockingStation.new}
  it 'releases bikes' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'stores a bike in the docking station' do
    subject.dock_bike(bike)
    result = subject.bikes
    expect(result).to eq([bike])
  end
  it 'returns the array of docked bikes' do
    result = subject.show_bikes
    expect(result).to be_an_instance_of(Array)
  end
  it 'passes error if docking station has no bikes' do
    expect { subject.release_bike }.to raise_error
  end
  it 'passes error if adding bike to full docking station' do
    dockingstation = DockingStation.new
    dockingstation.DEFAULT_CAPACITY.times { dockingstation.dock_bike Bike.new }
    expect {dockingstation.dock_bike(bike)}.to raise_error
  end
  it 'allows the user to set a capacity on the docking station when initializing' do
    dockingstation = DockingStation.new(25)
    expect(dockingstation.DEFAULT_CAPACITY).to eq(25)
  end
  it 'allows users to return broken bikes' do
    expect(dockingstation.dock_bike(bike, false)).to_eq([bike, false])
  end
  it 'prevents docking stations releasing broken bikes' do
  end
end
