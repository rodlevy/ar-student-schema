require_relative '../config'

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |courses|
       courses.integer :student_id     
       courses.integer :teacher_id
     end
  end
end
