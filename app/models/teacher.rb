require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students,
    :through => :courses

  validates :email, :uniqueness => true
end
