class User < ActiveRecord::Base
  validates :email, uniqueness: true
#  validates :login, uniqueness: true

  def authenticate(password)
  	self.password == password
  end
end
