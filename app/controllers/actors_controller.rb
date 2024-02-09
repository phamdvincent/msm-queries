class ActorsController < ApplicationController
  def get_all_actors
    @all_actors = Actor.all.to_a
    render({ :template => "actors_templates/all_actors" })
  end

  def get_actor_details
    @actor_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => @actor }).at(0)
    @characters = Character.where({ :id => @actor_id }).to_a
    @filmography = []
    @characters.each do |character|
      @filmography.push(Movie.where({ :id => character.id }))
    end
    render({ :template => "actors_templates/actor_details" })
  end

end
