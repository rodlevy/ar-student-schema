require 'faker'
require_relative 'app/models/teacher'
require_relative 'app/models/student'
require_relative 'app/models/course'

9.times do |t|
  t = Teacher.create( :first_name => Faker::Name.first_name,
                      :last_name => Faker::Name.last_name,
                      :email => Faker::Internet.email,
                      :phone => Faker::PhoneNumber.phone_number  )
end

27.times do |t|
  t = Student.create( :first_name => Faker::Name.first_name,
                      :last_name => Faker::Name.last_name,
                      :gender => ['male','female'].sample,
                      :birthday => '1970-01-01',
                      :email => Faker::Internet.email,
                      :phone => Faker::PhoneNumber.phone_number)
end

20.times do |t|
  t = Course.create( :student_id => (1..27).to_a.sample,
                             :teacher_id => (1..9).to_a.sample)
end

Course.create( student_id: 3,
                       teacher_id: 5)

