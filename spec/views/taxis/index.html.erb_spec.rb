require 'rails_helper'

RSpec.describe "taxis/index", type: :view do
  before(:each) do
    assign(:taxis, [
      Taxi.create!(
        :car_plate => "Car Plate"
      ),
      Taxi.create!(
        :car_plate => "Car Plate"
      )
    ])
  end

  it "renders a list of taxis" do
    render
    assert_select "tr>td", :text => "Car Plate".to_s, :count => 2
  end
end
