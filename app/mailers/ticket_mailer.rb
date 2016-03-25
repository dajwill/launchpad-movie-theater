class TicketMailer < ActionMailer::Base
  include ActionView::Helpers::AssetUrlHelper
  default from: 'noreply@theater.com'

  def ticket_confirmation ticket
    @ticket = ticket
    @movie = Movie.find(@ticket.movie_id)
    @showing = Showing.find(@ticket.showing_id)
    mail(to: ticket.email, subject: "Ticket confirmation")
  end
end
