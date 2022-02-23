require 'van'


describe Van do
  let(:dockingstation) {DockingStation.new}
  let(:bike) {Bike.new}
  let(:garage) {Garage.new}
  it 'takes broken bikes from docking stations' do
    dockingstation.dock_bike(bike, false)
    subject.take_broken_bikes(dockingstation)
    expect(subject.van_bikes).to eq([[bike, false]])
  end

  it 'delivers broken bikes to garages' do
    subject.van_bikes << [bike, false]
    subject.deliver_broken_bikes(garage)
    expect(garage.garage_bikes).to eq([[bike, false]])
  end

  it 'takes repaired bikes from garages' do
    garage.garage_bikes << [bike, true]
    subject.take_repaired_bikes(garage)
    expect(subject.van_bikes).to eq([[bike, true]])
  end

  it 'delivers repaired bikes to docking stations' do
    subject.van_bikes << [bike, true]
    subject.deliver_repaired_bikes(dockingstation)
    expect(dockingstation.bikes).to eq([[bike, true]])
  end
end
