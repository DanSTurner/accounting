class Expense
  attr_accessor :amount, :description

  def initialize(attributes)
    @amount = attributes[:amount]
    @description = attributes[:description]
  end

  def save
    File.open('database.csv', 'a') do |f|
      f.puts "#{self.amount},#{self.description}"
    end
  end
end

# add a header to the csv
# get and save the description