class HomeController < ApplicationController
  def now_playing
    # @movie_theaters = Theater.joins(:movie_theater).uniq.all
    # @movie_theaters = Theater.all.select{|t| t.active?}
    @movie_theaters = Theater.all.joins(:movie_theater)
    @ticket = Ticket.new

    if params[:title].present?
      movie_ids = Movie.where("title ILIKE :query", query: "%#{params[:title]}%").pluck(:id)
      theater_ids = MovieTheater.where(movie_id: movie_ids).pluck(:theater_id)
      @movie_theaters = @movie_theaters.where(id: theater_ids)
      # @movie_theaters = @movie_theaters.joins(:movie).where("movie.title ILIKE :query", query: "%#{params[:title]}%")
    end
  end
end
