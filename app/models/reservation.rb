class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  
  validates :start_date, :end_date, presence: true , :on => :create
  validate :end_date_after_start_date , :on => :create

  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank? 


    errors.add(:base, "data de plecare trebuie sa fie mai mare decat data de sosire") if self.end_date < self.start_date 


   
  end
  
    def unavailable_dates
    reservations.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
    end
end
