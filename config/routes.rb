Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "get_all_directors" })
  get("/directors/youngest", { :controller => "directors", :action => "get_youngest_director" })
  get("/directors/eldest", { :controller => "directors", :action => "get_eldest_director" })
  get("/directors/:director_id", { :controller => "directors", :action => "get_director_details"})



  get("/movies", { :controller => "movies", :action => "get_all_movies" })
  get("/movies/:movie_id", { :controller => "movies", :action => "get_movie_details" })

  get("/actors", { :controller => "actors", :action => "get_all_actors" })
  get("/actors/:actor_id", { :controller => "actors", :action => "get_actor_details" })

end
