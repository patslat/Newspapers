class NewspapersController < ApplicationController
  before_filter :authorize_user, :only => [:new, :create]

  def index
    @newspapers = Newspaper.all
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def new
    @newspaper = Newspaper.new
    2.times { @newspaper.subscription_plans.build }
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      redirect_to newspapers_url
    else
      render :new
    end
  end
end
