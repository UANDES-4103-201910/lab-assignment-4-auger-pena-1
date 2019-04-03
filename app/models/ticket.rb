class Ticket < ApplicationRecord
  before_save :check_date
  before_save :can_buy
  belongs_to :event
  belongs_to :category
  belongs_to :user
  belongs_to :order

  # A ticket cannot be created after the start date of the associated event
  def check_date()
    event = Event.find_by(id: self.event_id) 
    if Time.now > event.start_date then
       halt msg: 'check_date() fail' 
       false
    else
       true
    end
  end

  # No ticket can be bought after the start date of the event.
  def can_buy()
    event = Event.find_by(id: self.event_id)
    if Time.now > event.start_date then
       halt msg: 'can_buy() fail' 
       false
    else
       true
    end
  end

  def self.firstobject()
    first
  end

end
