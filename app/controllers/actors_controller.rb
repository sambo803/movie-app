class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.json
  end
end
