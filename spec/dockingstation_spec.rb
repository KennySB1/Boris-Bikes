require 'dockingstation'
describe DockingStation do
  it 'stores bikes' do
    expect(subject).to respond_to(:release_bike)
  end
end
