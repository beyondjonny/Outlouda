class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
      redirect_to companies_path(@company)
    end
  end

  def show
    @company = Company.find(params[:id])
    # @question = Question.new
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end

private
  def company_params
    params.require(:company).permit(:name, :industry, :photo)
  end
end
