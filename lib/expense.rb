require 'csv'
class Expense
  attr_accessor :amount, :description

  def initialize(attributes)
    self.CSV_check
    @amount = attributes[:amount]
    @description = attributes[:description]
  end

  def save
    File.open('database.csv', 'a') do |f|
      f.puts "#{self.amount},#{self.description}"
    end
  end

  def CSV_check
    File.open('database.csv', 'a') { |f| f.puts "Amount,Description" } unless File.exists?('database.csv')
  end
end