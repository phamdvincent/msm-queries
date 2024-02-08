class MoviesController < ApplicationController
  def get_all_movies
    @all_movies = Movie.all.to_a
    render({ :template => "movies_templates/all_movies "})
  end

  def get_movie_details
    
  end
end
