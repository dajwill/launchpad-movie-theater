class HomeController < ApplicationController
  def now_playing
    @movie_theaters = Theater.joins(:movie_theater).uniq.all
    @ticket = Ticket.new
  end
end
