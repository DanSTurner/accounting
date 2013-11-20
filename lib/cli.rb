require './lib/expense.rb'

class Cli
  def run
    expense = Expense.new(amount: get_amount, description: get_description)
    save_expense(expense)
  end

  def save_expense(expense)
    save("#{expense.amount},#{expense.description}")
  end

  def say(prompt)
    puts prompt
  end

  def get_amount
    say("What is the amount?")
    gets.strip.to_i
  end

  def get_description
    say("What is the description?")
    gets.strip
  end

  def save(entry)
    File.open('database.csv', 'a') do |file|
      file.puts entry
    end
  end

end