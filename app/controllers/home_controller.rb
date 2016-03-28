class HomeController < ApplicationController
  def now_playing
    # @movie_theaters = Theater.joins(:movie_theater).uniq.all
    @movie_theaters = Theater.all.select{|t| t.active?}
    @ticket = Ticket.new

    if params[:title].present?
      ids = Movie.where("title ILIKE :query", query: "%#{params[:title]}%").select(:id)
      @movie_theaters = @movie_theaters.where(id: ids)
      # @movie_theaters = @movie_theaters.join(:movie_theaters).where("movie_theaters.movie.title ILIKE :query", query: "%#{params[:title]}%")
    end
  end
end
