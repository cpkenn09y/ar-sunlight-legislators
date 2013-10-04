require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :uniqueness => true
  validates(:email, :format => {:with => /\w+@{1}\w+\.\w{2,}/, :message => 'nooooooo'})

  has_and_belongs_to_many :teachers

  def name
    self[:first_name] + ' ' + self[:last_name]
  end
end
