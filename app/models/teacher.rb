require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true
  validates(:email, :format => {:with => /\w+@{1}\w+\.\w{2,}/, :message => 'nooooooo'})

  has_and_belongs_to_many :students
end
