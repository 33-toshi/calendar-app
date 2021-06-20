class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = Plan.where(user_id: current_user.id, start_time: Date.today).order("start_time ASC")
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.valid?
      @plan.save
      redirect_to root_path
    else
      render :new
    end
  end

  def checked
    binding.pry
    plan = Plan.find(params[:id])
    if plan.checked
      plan.update(checked: false)
    else
      plan.update(checked: true)
    end

    item = Plan.find(params[:id])
    render json: { plan: item }
  end

  def destroy
    plan = Plan.find(params[:id])
    plan.destroy
    redirect_to root_path
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    plan = Plan.find(params[:id])
    plan.update(plan_params)
    redirect_to root_path
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :task, :memo, :start_time).merge(user_id: current_user.id)
  end
  
end
