require_relative 'db/config'
require_relative 'app/models/teacher.rb'

t = Teacher.new(:name => "Ken", :email => "leda@jacobi.info", :phone => '1234567890')
t.save

if !t.save
  p t.errors.messages
end
