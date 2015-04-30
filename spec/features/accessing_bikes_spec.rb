require 'spec_helper'

feature 'When a member of the public accesses a bike' do
  
  scenario 'the docking station releases a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

end