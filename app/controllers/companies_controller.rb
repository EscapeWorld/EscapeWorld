class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
    @locations = @company.locations.all
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end
end
