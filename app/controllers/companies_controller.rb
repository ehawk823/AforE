class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    Company.create(params[:company])
  end

  private

  def person_params
    params.require(:company).permit(:name, :description, :challenges)
  end

end
