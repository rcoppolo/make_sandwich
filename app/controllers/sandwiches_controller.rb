class SandwichesController < ApplicationController
  def index
		@sandwiches = Sandwich.all
  end

  def show
		@sandwich = Sandwich.find(params[:id])
  end

  def new
		@sandwich = Sandwich.new
  end
end
