class TakingsController < ApplicationController
  def create
    @division = Division.find(params[:taking][:division_id])
	current_user.apply_for! @division
	respond_to do |format|
	  format.html { redirect_to @division }
	  format.js
	end
  end

  def update
  end

  def destroy
    @division = Taking.find(params[:id]).division
	current_user.give_up! @division
	respond_to do |format|
	  format.html { redirect_to @division }
	  format.js
	end
  end
end
