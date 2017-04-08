class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end



  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
