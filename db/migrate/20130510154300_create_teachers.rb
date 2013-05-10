require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |teacher|
       teacher.string :first_name
       teacher.string :last_name
       teacher.string :email
       teacher.string :phone
       teacher.timestamps
     end
  end
end
