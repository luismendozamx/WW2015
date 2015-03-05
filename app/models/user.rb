class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true
  validates :folio, presence: true, folio: true

  has_many :event_subscriptions
  has_many :events, through: :event_subscriptions

  has_many :event_waiting_lists
  has_many :events_list, through: :event_waiting_lists, source: :event

  has_many :workshop_subscriptions
  has_many :workshops, through: :workshop_subscriptions

  has_many :workshop_waiting_lists
  has_many :workshops_list, through: :workshop_waiting_lists, source: :workshop

  def full_name
    first_name + " " + last_name
  end

  def join_event(event)
    self.event_subscriptions.create(event: event)
  end

  def leave_event(event)
    self.event_subscriptions.find_by(event_id: event.id).destroy
  end

  def event_subscribed?(event)
    self.events.all.include?(event)
  end

  def join_event_list(event)
    self.event_waiting_lists.create(event: event)
  end

  def leave_event_list(event)
    self.event_waiting_lists.find_by(event_id: event.id).destroy
  end

  def event_subscribed_list?(event)
    self.events_list.all.include?(event)
  end

  def join_workshop(workshop)
    self.workshop_subscriptions.create(workshop: workshop)
  end

  def leave_workshop(workshop)
    self.workshop_subscriptions.find_by(workshop_id: workshop.id).destroy
  end

  def workshop_subscribed?(workshop)
    self.workshops.all.include?(workshop)
  end

  def join_workshop_list(workshop)
    self.workshop_waiting_lists.create(workshop: workshop)
  end

  def leave_workshop_list(workshop)
    self.workshop_waiting_lists.find_by(workshop_id: workshop.id).destroy
  end

  def workshop_subscribed_list?(workshop)
    self.workshops_list.all.include?(workshop)
  end

  def workshop_number
    self.workshops.count
  end

  def banamex?
    if (1..250).include?(folio) || (4001..4551).include?(folio)
      true
    else
      false
    end
  end
end
