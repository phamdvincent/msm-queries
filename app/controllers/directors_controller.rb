class DirectorsController < ApplicationController
  def get_all_directors
    @all_directors = Director.all.to_a
    render({ :template => "directors_templates/all_directors"})
  end

  def get_director_details
    @director_id = params.fetch("director_id")
    @director = Director.where({ :id => @director_id }).at(0)
    @filmography = Movie.where({ :director_id => @director.id }).to_a
    render({ :template => "directors_templates/director_details" })
  end

  def get_youngest_director
    @youngest_dob = Director.maximum(:dob)
    @youngest_director = Director.where({:dob => @youngest_dob}).at(0)
    render({ :template => "directors_templates/youngest_director"})
  end

  def get_eldest_director
    @eldest_dob = Director.minimum(:dob)
    @eldest_director = Director.where({:dob => @eldest_dob}).at(0)
    render({ :template => "directors_templates/eldest_director"})
  end

end
