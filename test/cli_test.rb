require 'minitest/autorun'
require './lib/cli.rb'
require 'mocha/setup'

class CliTest < MiniTest::Unit::TestCase

  def test_run_says_what_is_amount
    Cli.expects(:say).with("What is the amount?")
    Cli.run
  end

end