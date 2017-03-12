require 'pry'
class FiguresController < ApplicationController

  get '/figures/:id/edit' do
    erb :'/figures/edit'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  post '/figures/new' do
    @figure = Figure.create(name: params[:figure][:name])
    @figure.titles = Title.titles(params)
    binding.pry
    @figure.landmarks = Landmark.landmarks(params)
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
