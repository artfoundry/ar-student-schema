require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :format => {:with => /.+@.+\...+/, 
    :message => "email must be in the format \"something@domain.com\""}

  validates :email, :uniqueness => true
  
  validates :phone, :format => {:with => /\(\d{3}\)\W\d{3}\W\d{4}.*/,
    :message => "phone must be in the format \"XXX-XXX-XXXX\""}

  validates_numericality_of :age, :greater_than => 5

  def name
    full_name = first_name + " " + last_name
  end

  def age
    age = Time.now.year - birthday.year
  end
end
