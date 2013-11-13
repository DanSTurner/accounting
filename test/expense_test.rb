require 'minitest/autorun'
require './lib/expense.rb'

class ExpenseTest < MiniTest::Unit::TestCase
def test_has_amount
  expense = Expense.new({:amount => 5})
  assert_equal expense.amount, 5
end

def test_has_description
  expense = Expense.new({:description => "test"})
  assert_equal expense.description, "test"
end

end