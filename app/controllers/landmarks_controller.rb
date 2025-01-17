class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do 
    @landmarks = Landmark.all
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

  delete '/landmarks/:id/delete' do
    @newLandmark = Landmark.find(params["id"])
    @newLandmark.destroy
    erb :'/landmarks/delete'
  end


end
