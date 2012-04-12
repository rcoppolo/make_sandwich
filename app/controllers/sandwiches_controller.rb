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

	def create
		@sandwich = Sandwich.new(params[:sandwich])
		if @sandwich.save
			redirect_to @sandwich
		else
			render :action => 'new'
		end
	end
end
