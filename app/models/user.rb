class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true

  has_many :event_subscriptions
  has_many :events, through: :event_subscriptions

  def full_name
    first_name + " " + last_name
  end

  def join_event(event)
    self.event_subscriptions.create(event: event)
  end

  def leave_event(event)
    self.event_subscriptions.find_by(event_id: event.id).destroy
  end

  def subscribed?(event)
    self.events.all.include?(event)
  end
end
