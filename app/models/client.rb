class Client < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pick_up_location, presence: true
  validates :pick_up_date, presence: true
  validates :pick_up_time, presence: true
  validates :phone_number, presence: true
  validates :city, presence: true
  validates :email, presence: true, format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

end
