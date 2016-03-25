class Ticket < ActiveRecord::Base
  belongs_to :showing
  belongs_to :movie

  validates_presence_of :movie_id
  # validates_presence_of :showing_id
  validates :showing_id, :presence => { :message => "Must select a showing" }
  validate :tickets_available?

  def tickets_available?
    if showing_id.present?
      if Showing.find(showing_id).tickets.count > Showing.find(showing_id).theater.capacity
        errors.add(:theater_id, "this theater is currently sold out")
      end
    end
  end

end
