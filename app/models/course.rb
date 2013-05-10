require_relative '../../db/config'

class Course < ActiveRecord::Base
  belongs_to :students
  belongs_to :teachers

end
