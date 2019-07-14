# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  date       :date
#  time       :time
#  role       :string
#  category   :string
#  amount     :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ApplicationRecord
  attribute :user_id, :integer
  attribute :date, :date
  attribute :role, :string
  attribute :category, :string
  attribute :amount, :float
  belongs_to :user

  def self.create
    super
  end

  def self.update
    super
  end

  def delete
    self.destroy
  end

  def setAmount(amount)
    self.amount = amount
  end

  def getAmount
    self.amount
  end

  def setType(type)
    self.role = type
  end

  def getType
    self.role
  end

  def setCategory(category)
    self.category = category
  end

  def getCategory
    self.category
  end

  def self.getTransactions
    Transaction.all
  end
end
