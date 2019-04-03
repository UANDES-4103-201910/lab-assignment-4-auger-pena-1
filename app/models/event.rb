class Event < ApplicationRecord
        #validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP,  
        #     message: "You must use a valid e-mail address" }
        #validates :name, presence: true, length: { minimum: 20 }
        #validates :capacity, numericality: { only-integer: true }
        #validates :password, presence: true, length: { in: 8..12 }
        #validates :phone, presence:true, length: { in: 9..12 }, numericality: { only-integer: true }
  validates :start_date, presence: true

  # As in https://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#creating-custom-validation-methods
  validate :start_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    errors.add(:start_date, "Start date must be after creation date") if
      !start_date.blank? and start_date < Date.today
  end

  def check_event_uniqueness
    errors.add(:base, "Can't create an event in the selected venue and datetime.") if
    Event.find_by(venue_id: venue_id, start_date: start_date).present? 
  end

  belongs_to :venue


  def self.most_tickets_sold()
      highest_ticket_id = Ticket.all.group(:event_id).count().max_by{|k,v| v}[0]
      Event.find(most_tickets_sold_id)
  end

  def self.highest_revenue()
      highest_event_id = Ticket.all.group(:event_id).sum(:price).max_by{|k,v| v}[0]
      Event.find(highest_event_id)
  end

end
