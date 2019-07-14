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
end
