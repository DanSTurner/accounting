require './lib/expense.rb'

class Cli
  def self.run
    expense = Expense.new(amount: get_amount, description: get_description)
    expense.save
  end

  def self.say(prompt)
    puts prompt
  end

  def self.get_amount
    self.say("What is the amount?")
    gets.strip.to_i
  end

  def self.get_description
    self.say("What is the description?")
    gets.strip
  end

end