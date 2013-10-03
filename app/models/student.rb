require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :uniqueness => true
  validates :age, numericality: {:greater_than => 5}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :phone, length: {minimum: 10}

  def name
    "#{first_name} #{last_name}"
  end

  def age
    @age = ((Date.today - birthday)/365).to_i
  end
end
