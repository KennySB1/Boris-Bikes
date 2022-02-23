require 'dockingstation'
describe DockingStation do
  let(:bike) {Bike.new}
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
  dockingstation.bikes.push(bike)
  expect {dockingstation.dock_bike(bike)}.to raise_error
  end
end
