class WorkshopSubscriptionsController < ApplicationController

  def create
    @workshop = Workshop.find(params[:workshop_id])

    if current_user.workshop_number + 1 <= 5
      current_user.join_workshop(@workshop)
      respond_to do |format|
        format.html { redirect_to agenda_path }
        format.js
      end
    else
      flash[:alert] = "Ya llegaste al límite de workshops a los cuales puedes registrate."
      redirect_to agenda_path
    end
  end

  def destroy
    @workshop = Workshop.find(params[:workshop_id])

    current_user.leave_workshop(@workshop)

    respond_to do |format|
      format.html { redirect_to agenda_path }
      format.js
    end
  end
  
end
