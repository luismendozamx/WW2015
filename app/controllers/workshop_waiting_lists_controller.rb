class WorkshopWaitingListsController < ApplicationController
  def create
    @workshop = Workshop.find(params[:workshop_id])

    current_user.join_workshop_list(@workshop)

    respond_to do |format|
      format.html { redirect_to agenda_path }
      format.js
    end
  end

  def destroy
    @workshop = Workshop.find(params[:workshop_id])

    current_user.leave_workshop_list(@workshop)

    respond_to do |format|
      format.html { redirect_to agenda_path }
      format.js
    end
  end
end
