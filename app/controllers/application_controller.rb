require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/tasklist" do
    task_list = Task.all
    task_list.to_json
  end

  post '/tasklist' do
    task = Task.create(
      task: params[:task]
      )
    task.to_json
  end

  delete '/tasklist/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  patch '/tasklist/:id' do
    task = Task.find(params[:id])
    task.update(
      task: params[:task]
    )
    task.to_json
  end
end
