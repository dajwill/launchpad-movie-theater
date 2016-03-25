class Showing < ActiveRecord::Base
  belongs_to :theater
  has_many :tickets

  def sold_out?
    unless self.theater.capacity > self.tickets.count
      return true
    end
  end

  def remaining_seats
    self.theater.capacity - self.tickets.count
  end
end
