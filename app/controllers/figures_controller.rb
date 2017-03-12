require 'pry'
class FiguresController < ApplicationController

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures' do
    @figure = Figure.create(name: params[:figure][:name])
    @figure.titles = Title.check_or_create_titles(params)
    # binding.pry
    # @figure.landmarks = Landmark.check_or_create_landmarks(params)
    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end
    @figure.save
    redirect "/figures/show/#{@figure.id}"
  end

  get '/figures/show/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :'/figures/show'
  end

  get '/figures/index' do
    @figures = Figure.all
    erb :'/figures/index'
  end
end
