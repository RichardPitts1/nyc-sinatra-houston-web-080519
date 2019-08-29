class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do 
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  post '/landmarks' do 
    Landmark.create(name: params[:name])
    erb :'landmarks/index'
  end

  get '/landmark/newLandmark' do
    erb :'landmarks/newLandmark'
  end

  post '/landmark/show' do
  @newLandmark = Landmark.create({
    name: params[:name], 
    figure_id: params[:figure_id], 
    year_completed: params[:year_completed]
  })

  @landmarks = Landmark.all
  erb :'landmarks/show'
  end
end
