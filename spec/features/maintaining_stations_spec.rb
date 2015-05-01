require 'spec_helper'

feature 'As a system maintainer looking after docking stations,' do
  scenario 'a docking station can be created with a larger capacity than the default' do
    docking_station = DockingStation.new(40)
    expect(docking_station.capacity).to eq 40
  end
end