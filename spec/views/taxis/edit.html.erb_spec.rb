require 'rails_helper'

RSpec.describe "taxis/edit", type: :view do
  before(:each) do
    @taxi = assign(:taxi, Taxi.create!(
      :car_plate => "MyString"
    ))
  end

  it "renders the edit taxi form" do
    render

    assert_select "form[action=?][method=?]", taxi_path(@taxi), "post" do

      assert_select "input#taxi_car_plate[name=?]", "taxi[car_plate]"
    end
  end
end
