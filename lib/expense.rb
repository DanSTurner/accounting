class Expense
  attr_accessor :amount, :description

  def initialize(attributes)
    @amount = attributes[:amount]
    @description = attributes[:description]
  end

end