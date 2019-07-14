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
  belongs_to :user
end
