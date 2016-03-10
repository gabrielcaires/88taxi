require 'rails_helper'

RSpec.describe "taxis/new", type: :view do
  before(:each) do
    assign(:taxi, Taxi.new(
      :car_plate => "MyString"
    ))
  end

  it "renders new taxi form" do
    render

    assert_select "form[action=?][method=?]", taxis_path, "post" do

      assert_select "input#taxi_car_plate[name=?]", "taxi[car_plate]"
    end
  end
end
