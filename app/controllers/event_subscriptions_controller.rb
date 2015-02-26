class EventSubscriptionsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])

    current_user.join_event(@event)

    respond_to do |format|
      format.html { redirect_to agenda_path }
      format.js
    end
  end

  def destroy
    @event = Event.find(params[:event_id])

    current_user.leave_event(@event)

    respond_to do |format|
      format.html { redirect_to agenda_path }
      format.js
    end
  end
end
