require_relative '../../db/config'

class Student < ActiveRecord::Base

  has_many :teachers,
    :through => :courses



  validates :email, :uniqueness => true
  # validates Date.today - :birthday.years, :exclusion => { :in => [0,1,2,3]}
  validates :age, :exclusion => { :in => (0..3)}
  validates :email, :format => { :with => /[a-zA-Z1_9]+@[a-zA-Z1_9]+\.[a-zA-Z1_9]{2,}/}
  validate :should_have_at_least_10_numbers

  # def name
  #   "#{first_name} #{last_name}"
  # end

  def age
    now = Date.today
    (now - birthday).div(365)  
  end

  def should_have_at_least_10_numbers
    if phone.gsub(/\D/, '').length < 10 
      errors.add(:phone, "fail")
    end
  end

end


