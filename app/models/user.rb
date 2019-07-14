# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  name            :string
#  role            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  attribute :email, :string
  attribute :password_digest, :string
  attribute :name, :string
  attribute :role, :string
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def create
    super
  end
  
  def resetPassword(new_password)
    self.update_attributes(password: new_password)
  end

  def login(password)
    self.authenticate(password)
  end

  def setName(name)
    self.name = name
  end

  def getName
    self.name
  end

  def getEmail
    self.email
  end

  def setEmail(email)
    self.email = email
  end
  
  def getPassword
    self.password
  end

  def setPassword(password)
    self.password = password
  end
end
