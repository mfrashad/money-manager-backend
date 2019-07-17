class Statistic
  def self.generate(userId)
    transactions = Transaction.getTransactions()
    date = transactions.where(user: userId).group(:date).sum(:amount)
    category = transactions.where(user: userId).group(:category).sum(:amount)
    total = transactions.where(user: userId).group(:role).sum(:amount)
    return statistic = {date: date, category: category, total: total}
  end
end