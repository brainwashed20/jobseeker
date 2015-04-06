class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if current_user.is_company?
      @jobs = Job.where(company_id: current_user.company.id)
      respond_with(@jobs)
    else
      redirect_to root_path
    end
  end

  def show
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.company = current_user.company
    @job.save
    respond_with(@job)
  end

  def update
    @job.update(job_params)
    respond_with(@job)
  end

  def destroy
    @job.destroy
    respond_with(@job)
  end

  private
    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:nivel_cariera, :descriere, :competente_obligatorii, :competente_optionale, :beneficii)
    end
end
