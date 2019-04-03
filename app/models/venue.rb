class Venue < ApplicationRecord
        validates :name, presence: true, length: { minimum: 20 }
        validates :capacity, numericality: { only_integer: true }

   def get_last_event()
      Event.where(:venue_id => self).order('start_date DESC').first
   end


   def last_attendance()
      Ticket.where(:event => self.get_last_event()).count
   end

end
