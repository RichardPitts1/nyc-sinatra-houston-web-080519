class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do 
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/newFigure' do
    # @newFigure = Figure.create({
    #   name: params[:name]
    # })
    erb :'/figures/newFigure'
  end

  post '/figure/show' do
    @newFigure = Figure.create({
      name: params[:name]
    })
    @figures = Figure.all
    erb :'figures/show'
  end
end
