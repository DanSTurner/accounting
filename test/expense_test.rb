require 'minitest/autorun'
require './lib/expense.rb'

class ExpenseTest < MiniTest::Unit::TestCase
  def setup
    @expense = Expense.new
  end

  def test_has_amount
    expense = Expense.new({:amount => 5})
    assert_equal 5, expense.amount
  end

  def test_has_description
    expense = Expense.new({:description => "test"})
    assert_equal "test", expense.description
  end

  def test_calculates_tax_from_amount
    @expense.amount = 10
    assert_equal 0.50, @expense.tax
  end

end