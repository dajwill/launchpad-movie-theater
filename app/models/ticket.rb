class Ticket < ActiveRecord::Base
  belongs_to :theater
  belongs_to :movie

  validates_presence_of :movie_id, :theater_id

def tickets_available?
  if Theater.find(theater_id).tickets.count > Theater.capacity
    errors.add(:theater_id, "this theater is currently sold out")
  end
end

end
