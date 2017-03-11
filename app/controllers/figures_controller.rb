require 'pry'
class FiguresController < ApplicationController

  get '/figures/show' do
    erb :'/figures/show'
  end

  get '/figures/edit' do
    erb :'/figures/edit'
  end

  get '/figures/new' do
    erb :'/figures/new'
  end

  get '/figures/index' do
    erb :'/figures/index'
  end
end
