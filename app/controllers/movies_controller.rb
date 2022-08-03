class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(title: params[:title],
                      year: params[:year],
                      length: params[:length])
    movie.save
    render json: { message: "hello created movie!" }
  end
end
