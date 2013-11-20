require 'csv'
class Expense
  attr_accessor :amount, :description

  def initialize(attributes = {})
    self.CSV_check
    @amount = attributes[:amount]
    @description = attributes[:description]
  end

  def CSV_check
    File.open('database.csv', 'a') { |f| f.puts "Amount,Description" } unless File.exists?('database.csv')
  end

  def tax
    @amount * 0.05
  end
end