class ContributorsController < ApplicationController

  def index
    @contributors = Contributor.all 
  end

  def new
    @contributor = Contributor.new 
  end

  def create
    @contributor = Contributor.new(contributor_params)
    if @contributor.save
      redirect_to @contributor
    else
      render :new
    end
  end

  def show
    @contributor = Contributor.find(params[:id])
  end

  private
    def contributor_params
      params.require(:contributor).permit(:name, :title, :email, :password)
    end
    
end
