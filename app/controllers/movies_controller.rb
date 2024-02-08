class MoviesController < ApplicationController
  def get_all_movies
    @all_movies = Movie.all.to_a
    render({ :template => "movies_templates/all_movies" })
  end

  def get_movie_details
    @movie_id = params.fetch("movie_id")
    @movie = Movie.where({ :id => @movie_id}).at(0)
    render({ :template => "movies_templates/movie_details" })
  end
end
