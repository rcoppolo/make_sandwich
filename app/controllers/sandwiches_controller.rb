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
			flash[:success] = "Your sandwich looks terrific!"
			redirect_to @sandwich
		else
			flash[:error] = "There's something wrong with that there sandwich."
			render :action => 'new'
		end
	end
end
