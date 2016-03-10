require 'rails_helper'

RSpec.describe "taxis/show", type: :view do
  before(:each) do
    @taxi = assign(:taxi, Taxi.create!(
      :car_plate => "Car Plate"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Car Plate/)
  end
end
