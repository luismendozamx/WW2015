class WorkshopsController < ApplicationController
  before_action :set_workshop, only: [:show, :edit, :update, :destroy]
  before_action :admin_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @workshops = Workshop.all
    respond_with(@workshops)
  end

  def show
    respond_with(@workshop)
  end

  def new
    @workshop = Workshop.new
    respond_with(@workshop)
  end

  def edit
  end

  def create
    @workshop = Workshop.new(workshop_params)
    @workshop.save
    respond_with(@workshop)
  end

  def update
    @workshop.update(workshop_params)
    respond_with(@workshop)
  end

  def destroy
    @workshop.destroy
    respond_with(@workshop)
  end

  private
    def set_workshop
      @workshop = Workshop.friendly.find(params[:id])
    end

    def workshop_params
      params.require(:workshop).permit(:title, :description, :speaker_id, :location_id, :category_id, :limit, :limit_banamex, :slot, :day_id, :time, :length)
    end
end
