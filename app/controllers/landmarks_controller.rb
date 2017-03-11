require 'pry'
class LandmarksController < ApplicationController

  get '/landmarks/show/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :'/landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :'/landmarks/edit'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/index' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end
end
