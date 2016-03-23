json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :movie_id, :theater_id
  json.url ticket_url(ticket, format: :json)
end
