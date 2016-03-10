json.array!(@taxis) do |taxi|
  json.extract! taxi, :id, :car_plate
  json.url taxi_url(taxi, format: :json)
end
