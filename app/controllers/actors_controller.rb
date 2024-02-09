class ActorsController < ApplicationController
  def get_all_actors
    @all_actors = Actor.all.to_a
    render({ :template => "actors_templates/all_actors" })
  end

  def get_actor_details
    @actor_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => @actor_id }).at(0)
    @characters = Character.where({ :actor_id => @actor_id }).to_a
    render({ :template => "actors_templates/actor_details" })
  end

end
