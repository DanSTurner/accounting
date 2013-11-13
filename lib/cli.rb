class Cli
  def self.run
    self.say("What is the amount?")
    expense = Expense.new(amount: get_amount)
    expense.save
  end

  def self.say(prompt)
    puts prompt
  end

  def self.get_amount
    gets.strip.to_i
  end

  def self.get_description
    gets.strip
  end

end