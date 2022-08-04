class ActorsController < ApplicationController
  def index
    actors = Actor.all
    render json: actors.json
  end

  def create
    actor = Actor.new(name: params[:name], age: params[:age])
    render json: actor.as_json
    actor.save
  end

  def show
    actor = Actor.find_by(id: params[:id])
    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.name = params[:name] || actor.name
    actor.age = params[:age] || actor.age
    actor.save
    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor record destroyed" }
  end
end
