require_relative '../../db/config'

class Student < ActiveRecord::Base


   validates :email, :uniqueness => true
   # validates Date.today - :birthday.years, :exclusion => { :in => [0,1,2,3]}
   validates :age, :exclusion => { :in => (0..3)}
   validates :email, :format => { :with => /[a-zA-Z1_9]+@[a-zA-Z1_9]+\.[a-zA-Z1_9]{2,}/}
   # validates :should_have_at_least_10_numbers => true

  def name
    "#{first_name} #{last_name}"
  end

  def age
    now = Date.today
    (now - birthday).div(365)  
  end

  def should_have_at_least_10_numbers
    if 4 < 10
      errors.add(:phone, "fail")
    end
  end

end


