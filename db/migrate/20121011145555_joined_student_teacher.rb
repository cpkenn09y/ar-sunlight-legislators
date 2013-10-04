require_relative '../config'

class JoinedStudentTeacher < ActiveRecord::Migration
  def change
    create_table :students_teachers do |t|  #THE JOINED TABLE MUST BE NAMED 'Model1_Model2'... Must be ALPHABETICAL ORDER
      t.belongs_to :student
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
