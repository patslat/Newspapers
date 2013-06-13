class SubscriptionPlansController < ApplicationController
  def new
  end

  def create
    @newspaper = Newspaper.find(params[:newspaper_id])
    @newspaper.subscription_plans.build(params[:subscription_plan])
    if @newspaper.save
      redirect_to newspaper_url(@newspaper)
    else
      render :new
    end

  end
end
