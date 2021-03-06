class SandwichesController < ApplicationController
  def index
		if current_user
			@sandwiches = current_user.sandwiches
		else
			redirect_to signin_path
		end
  end

  def show
		@sandwich = Sandwich.find(params[:id])
  end

  def new
		if current_user
			@sandwich = Sandwich.new
		else
			redirect_to signin_path
		end
  end

	def create
		@sandwich = Sandwich.new(params[:sandwich])
		if @sandwich.save
			flash[:success] = "The sandwich makers have been alerted! Your sandwich is on the way!"
			redirect_to @sandwich
		else
			flash[:error] = "There's something wrong with that there sandwich."
			render :action => 'new'
		end
	end

	def update
		@sandwich = Sandwich.find(params[:id])
		if @sandwich.update_attributes(params[:sandwich])
			flash[:success] = "Thanks for the rating!"
			redirect_to @sandwich
		else
			flash[:error] = "We messed up the rating. Try again."
			redirect_to @sandwich
		end
	end
end
