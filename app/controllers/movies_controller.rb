class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(title: params[:title],
                      year: params[:year],
                      length: params[:length])
    render json: movie.as_json
    movie.save
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.length = params[:length] || movie.length
    movie.save
    render json: movie.as_json
  end
end
