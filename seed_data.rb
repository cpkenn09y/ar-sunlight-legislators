require_relative 'db/config.rb'
require_relative 'app/models/student.rb'
require_relative 'app/models/teacher.rb'

require 'faker'


### POPULATE STUDENTS TABLE
# @genders = ["Male","Female"]

# 2000.times do 
  # Student.create(:first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :gender => @genders.sample, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number) # OR genders[rand(2)]
# end

### POPULATE TEACHERS TABLE
# 9.times do
#   Teacher.create(:name => Faker::Name.first_name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number)
# end

### FILL STUDENT's TEACHER_ID COLUMN

# teacher_count = Teacher.all.length

# Student.all.each do |student|
#   student.teacher_id = rand(1..teacher_count)
#   student.save
# end

### Alternatively, populate teacher_id field in students table. Using the baller way! We are able to do this because of the 'belongs_to' clause in the Student class.
# Student.all.each { |student| student.teacher = Teacher.all.sample; student.save }

### POPULATE STUDENTS_TEACHERS_JOINED TABLE
# teachers = Teacher.all

# students = Student.all
# students.each do |student| 
#   teachers.sample(5).each { |random_teacher| student.teachers << random_teacher } 
#   student.save 
#   end
