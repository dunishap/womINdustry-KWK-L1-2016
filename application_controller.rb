require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/quiz' do
    erb :quiz
  end


  get '/math' do
    erb :math
  end


  get '/math' do
    erb :math
  end

  get '/science' do
    erb :science
  end

  get '/tech' do
    erb :tech
  end

  get '/engineering' do
    erb :engineering
  end

  post '/results' do
    p params
    @new_answer=Answers.new(params)
    @new_answer.answer
    p @new_answer.print
    erb :results
  end

end