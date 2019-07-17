class Statistic
  def self.generate(userId)
    transactions = Transaction.getTransactions()
    date = Transaction.where(user: userId).group_by { |m| m.date.strftime("%B") }.map { |m, t| [m, t.reduce(0) { |sum, t| sum + t.amount } ] }
    category = transactions.where(user: userId).group(:category).sum(:amount).map {|x| x}
    total = transactions.where(user: userId).group(:role).sum(:amount)
    return statistic = {date: date, category: category, total: total}
  end
end