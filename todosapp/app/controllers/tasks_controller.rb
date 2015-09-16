class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks.to_json, status: 200
  end

  def show
    # render text: "params : #{params.inspect}"
    if Task.exists?(params[:id])
      task = Task.find(params[:id])
      render json: task.to_json, status: 200
    else
      render json: { error_msg: 'Record Not Found!', id: params[:id] }.to_json, status: 404
    end
  end

  def create
    #For create to work, we must *require* that a parameter is sent with the name 'task'
    if params[:task].nil? || params[:task].empty?
      err_msg = "The 'message' parameter was empty or not found"
      render json: { error_msg: err_msg }.to_json, status: 422
    else
      # task = Task.create(task: params[:task])
      task = Task.new
      task.task = params[:task]
      task.save
      render json: task.to_json, status: 201
    end
  end
end
