require 'minitest/autorun'
require './lib/cli.rb'
require 'mocha/setup'

class CliTest < MiniTest::Unit::TestCase
  def setup
    @cli = Cli.new
  end

  def test_says_what_is_amount
    @cli.expects(:puts).with("What is the amount?")
    @cli.say("What is the amount?")
  end

  def test_get_amount_prompts_for_the_amount
    @cli.expects(:say).with("What is the amount?")
    @cli.stubs(:gets).returns("5")
    @cli.get_amount
  end

  def test_get_amount
    @cli.stubs(:say)
    @cli.expects(:gets).returns("5")
    @cli.get_amount
  end

  def test_get_description
    @cli.expects(:say).with("What is the description?")
    @cli.expects(:gets).returns("descibin' it!")
    @cli.get_description
  end

  def test_saves_input_to_database
    @cli.stubs(:get_amount).returns(5)
    @cli.stubs(:get_description).returns("food")
    @cli.expects(:save).with("5,food")
    @cli.run
  end

  def test_save_writes_to_the_database
    File.expects(:open).with("database.csv", 'a')
    @cli.save(Expense.new)
  end

end
