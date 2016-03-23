class MovieRepresenter
  include HTTParty

  def initialize
    response = HTTParty.get('http://api.themoviedb.org/3/movie/now_playing?api_key=3fe97bd6dfd122192cab16f6045b999e')
    @results = response.parsed_response['results']
  end

  def first_movie
    @results.first
  end

  def results
    @results
  end

  def movies
    movies = []
    @results.each do |movie|
      # movies
      # puts movie['title']
      movies << {
        "title" => movie['title'],
        "overview" => movie['overview'],
        "image" => "https://image.tmdb.org/t/p/original/#{movie['poster_path']}",
      }
    end
    movies
  end
end
