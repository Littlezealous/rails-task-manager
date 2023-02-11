class TasksController < ApplicationController
    def new
        @task =Task.new
    end
    
    def create 
        @task = Task.new(task_params)
        @task.save 
        redirect_to tasks_path(@task)
    end
    
    def show 
        @task = Task.find(params[:id])
    end
    
    def index
        @tasks = Task.all   
    end   

end
  
private
  
  def task_params
    params.require(:task).permit(:title, :details)
  end