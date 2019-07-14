class Statistic
  def generate(userId)
    transactions = Transaction.getTransactions()
    transactions.where(user: userId).group(:date).sum(:amount)
  end
end