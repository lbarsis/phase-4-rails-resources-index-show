class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find(params[:id])
    render json: bird

  rescue ActiveRecord::RecordNotFound => error
    render json: {message: error.message}

  end
end
