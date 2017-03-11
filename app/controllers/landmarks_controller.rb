require 'pry'
class LandmarksController < ApplicationController

  get '/landmarks/show' do
    erb :'/landmarks/show'
  end

  get '/landmarks/edit' do
    erb :'/landmarks/edit'
  end

  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/index' do
    erb :'/landmarks/index'
  end
end
