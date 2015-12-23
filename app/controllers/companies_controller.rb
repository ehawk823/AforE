class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    new_company = Company.create(company_params)
    new_company.save
    redirect_to current_user
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :challenges)
  end

end
