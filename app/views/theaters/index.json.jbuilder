json.array!(@theaters) do |theater|
  json.extract! theater, :id, :capacity
  json.url theater_url(theater, format: :json)
end
