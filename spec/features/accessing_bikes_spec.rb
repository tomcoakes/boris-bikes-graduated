require 'spec_helper'

feature 'When a member of the public accesses a bike,' do
  
  scenario 'the docking station releases a working bike' do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  scenario 'docking station does not release a bike when there are none available' do
    docking_station = DockingStation.new
    expect { docking_station.release_bike }.to raise_error 'No bikes available'
  end

end

feature 'When a member of the public returns a bike,' do
  scenario 'the bike cannot be docked if the station is full' do
    docking_station = DockingStation.new
    20.times { docking_station.dock(Bike.new) }
    expect { docking_station.dock(Bike.new) }.to raise_error 'Docking station full'
  end
end