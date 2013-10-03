require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |table|
      table.column :first_name, :string
      table.column :last_name,  :string
      table.column :gender,     :string
      table.column :birthday,   :date
      table.column :email,      :string
      table.column :phone,      :string
      table.column :created_at, :datetime
      table.column :updated_at, :datetime
    end
  end
end
