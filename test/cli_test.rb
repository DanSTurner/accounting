require 'minitest/autorun'
require './lib/cli.rb'
require 'mocha/setup'

class CliTest < MiniTest::Unit::TestCase
  def setup
    @Cli = Cli.new
  end

  def test_says_what_is_amount
    @Cli.expects(:puts).with("What is the amount?")
    @Cli.say("What is the amount?")
  end

  def test_get_amount
    @Cli.expects(:say).with("What is the amount?")
    @Cli.expects(:gets).returns("5")
    @Cli.get_amount
  end

  def test_get_description
    @Cli.expects(:say).with("What is the description?")
    @Cli.expects(:gets).returns("descibin' it!")
    @Cli.get_description
  end

end
